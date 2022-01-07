; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_dir_rename_entry_init.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_dir_rename_entry_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_rename_entry = type { i8*, i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dir_rename_entry*, i8*)* @dir_rename_entry_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dir_rename_entry_init(%struct.dir_rename_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.dir_rename_entry*, align 8
  %4 = alloca i8*, align 8
  store %struct.dir_rename_entry* %0, %struct.dir_rename_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.dir_rename_entry*, %struct.dir_rename_entry** %3, align 8
  %6 = getelementptr inbounds %struct.dir_rename_entry, %struct.dir_rename_entry* %5, i32 0, i32 4
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @strhash(i8* %7)
  %9 = call i32 @hashmap_entry_init(i32* %6, i32 %8)
  %10 = load i8*, i8** %4, align 8
  %11 = load %struct.dir_rename_entry*, %struct.dir_rename_entry** %3, align 8
  %12 = getelementptr inbounds %struct.dir_rename_entry, %struct.dir_rename_entry* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = load %struct.dir_rename_entry*, %struct.dir_rename_entry** %3, align 8
  %14 = getelementptr inbounds %struct.dir_rename_entry, %struct.dir_rename_entry* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.dir_rename_entry*, %struct.dir_rename_entry** %3, align 8
  %16 = getelementptr inbounds %struct.dir_rename_entry, %struct.dir_rename_entry* %15, i32 0, i32 2
  %17 = call i32 @strbuf_init(i32* %16, i32 0)
  %18 = load %struct.dir_rename_entry*, %struct.dir_rename_entry** %3, align 8
  %19 = getelementptr inbounds %struct.dir_rename_entry, %struct.dir_rename_entry* %18, i32 0, i32 1
  %20 = call i32 @string_list_init(i32* %19, i32 0)
  ret void
}

declare dso_local i32 @hashmap_entry_init(i32*, i32) #1

declare dso_local i32 @strhash(i8*) #1

declare dso_local i32 @strbuf_init(i32*, i32) #1

declare dso_local i32 @string_list_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
