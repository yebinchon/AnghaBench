; ModuleID = '/home/carl/AnghaBench/git/extr_mailmap.c_free_mailmap_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_mailmap.c_free_mailmap_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mailmap_entry = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i8*, i32 }

@.str = private unnamed_addr constant [57 x i8] c"mailmap: removing entries for <%s>, with %d sub-entries\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"mailmap: - simple: '%s' <%s>\0A\00", align 1
@free_mailmap_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @free_mailmap_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_mailmap_entry(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mailmap_entry*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.mailmap_entry*
  store %struct.mailmap_entry* %7, %struct.mailmap_entry** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load %struct.mailmap_entry*, %struct.mailmap_entry** %5, align 8
  %10 = getelementptr inbounds %struct.mailmap_entry, %struct.mailmap_entry* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @debug_mm(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %8, i8* %12)
  %14 = load %struct.mailmap_entry*, %struct.mailmap_entry** %5, align 8
  %15 = getelementptr inbounds %struct.mailmap_entry, %struct.mailmap_entry* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @debug_str(i32 %16)
  %18 = load %struct.mailmap_entry*, %struct.mailmap_entry** %5, align 8
  %19 = getelementptr inbounds %struct.mailmap_entry, %struct.mailmap_entry* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i8* @debug_str(i32 %20)
  %22 = call i32 @debug_mm(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %17, i8* %21)
  %23 = load %struct.mailmap_entry*, %struct.mailmap_entry** %5, align 8
  %24 = getelementptr inbounds %struct.mailmap_entry, %struct.mailmap_entry* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @free(i32 %25)
  %27 = load %struct.mailmap_entry*, %struct.mailmap_entry** %5, align 8
  %28 = getelementptr inbounds %struct.mailmap_entry, %struct.mailmap_entry* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @free(i32 %29)
  %31 = load %struct.mailmap_entry*, %struct.mailmap_entry** %5, align 8
  %32 = getelementptr inbounds %struct.mailmap_entry, %struct.mailmap_entry* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 1, i32* %33, align 8
  %34 = load %struct.mailmap_entry*, %struct.mailmap_entry** %5, align 8
  %35 = getelementptr inbounds %struct.mailmap_entry, %struct.mailmap_entry* %34, i32 0, i32 0
  %36 = load i32, i32* @free_mailmap_info, align 4
  %37 = call i32 @string_list_clear_func(%struct.TYPE_2__* %35, i32 %36)
  ret void
}

declare dso_local i32 @debug_mm(i8*, i8*, i8*) #1

declare dso_local i8* @debug_str(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @string_list_clear_func(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
