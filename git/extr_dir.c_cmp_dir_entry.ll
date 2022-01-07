; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_cmp_dir_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_cmp_dir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_entry = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmp_dir_entry(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dir_entry*, align 8
  %6 = alloca %struct.dir_entry*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.dir_entry**
  %9 = load %struct.dir_entry*, %struct.dir_entry** %8, align 8
  store %struct.dir_entry* %9, %struct.dir_entry** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.dir_entry**
  %12 = load %struct.dir_entry*, %struct.dir_entry** %11, align 8
  store %struct.dir_entry* %12, %struct.dir_entry** %6, align 8
  %13 = load %struct.dir_entry*, %struct.dir_entry** %5, align 8
  %14 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dir_entry*, %struct.dir_entry** %5, align 8
  %17 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dir_entry*, %struct.dir_entry** %6, align 8
  %20 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dir_entry*, %struct.dir_entry** %6, align 8
  %23 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @name_compare(i32 %15, i32 %18, i32 %21, i32 %24)
  ret i32 %25
}

declare dso_local i32 @name_compare(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
