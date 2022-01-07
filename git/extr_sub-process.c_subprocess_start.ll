; ModuleID = '/home/carl/AnghaBench/git/extr_sub-process.c_subprocess_start.c'
source_filename = "/home/carl/AnghaBench/git/extr_sub-process.c_subprocess_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashmap = type { i32 }
%struct.subprocess_entry = type { i8*, i32, %struct.child_process }
%struct.child_process = type { i32, i32, i32, i32, i8*, i32, i32 }
%struct.subprocess_entry.0 = type opaque

@subprocess_exit_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"subprocess\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"cannot fork to run subprocess '%s'\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"initialization for subprocess '%s' failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @subprocess_start(%struct.hashmap* %0, %struct.subprocess_entry* %1, i8* %2, i32 (%struct.subprocess_entry.0*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hashmap*, align 8
  %7 = alloca %struct.subprocess_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32 (%struct.subprocess_entry.0*)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.child_process*, align 8
  store %struct.hashmap* %0, %struct.hashmap** %6, align 8
  store %struct.subprocess_entry* %1, %struct.subprocess_entry** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 (%struct.subprocess_entry.0*)* %3, i32 (%struct.subprocess_entry.0*)** %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load %struct.subprocess_entry*, %struct.subprocess_entry** %7, align 8
  %14 = getelementptr inbounds %struct.subprocess_entry, %struct.subprocess_entry* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load %struct.subprocess_entry*, %struct.subprocess_entry** %7, align 8
  %16 = getelementptr inbounds %struct.subprocess_entry, %struct.subprocess_entry* %15, i32 0, i32 2
  store %struct.child_process* %16, %struct.child_process** %11, align 8
  %17 = load %struct.child_process*, %struct.child_process** %11, align 8
  %18 = call i32 @child_process_init(%struct.child_process* %17)
  %19 = load %struct.child_process*, %struct.child_process** %11, align 8
  %20 = getelementptr inbounds %struct.child_process, %struct.child_process* %19, i32 0, i32 6
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @argv_array_push(i32* %20, i8* %21)
  %23 = load %struct.child_process*, %struct.child_process** %11, align 8
  %24 = getelementptr inbounds %struct.child_process, %struct.child_process* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.child_process*, %struct.child_process** %11, align 8
  %26 = getelementptr inbounds %struct.child_process, %struct.child_process* %25, i32 0, i32 1
  store i32 -1, i32* %26, align 4
  %27 = load %struct.child_process*, %struct.child_process** %11, align 8
  %28 = getelementptr inbounds %struct.child_process, %struct.child_process* %27, i32 0, i32 2
  store i32 -1, i32* %28, align 8
  %29 = load %struct.child_process*, %struct.child_process** %11, align 8
  %30 = getelementptr inbounds %struct.child_process, %struct.child_process* %29, i32 0, i32 3
  store i32 1, i32* %30, align 4
  %31 = load i32, i32* @subprocess_exit_handler, align 4
  %32 = load %struct.child_process*, %struct.child_process** %11, align 8
  %33 = getelementptr inbounds %struct.child_process, %struct.child_process* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  %34 = load %struct.child_process*, %struct.child_process** %11, align 8
  %35 = getelementptr inbounds %struct.child_process, %struct.child_process* %34, i32 0, i32 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %35, align 8
  %36 = load %struct.child_process*, %struct.child_process** %11, align 8
  %37 = call i32 @start_command(%struct.child_process* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %4
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %5, align 4
  br label %68

44:                                               ; preds = %4
  %45 = load %struct.subprocess_entry*, %struct.subprocess_entry** %7, align 8
  %46 = getelementptr inbounds %struct.subprocess_entry, %struct.subprocess_entry* %45, i32 0, i32 1
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @strhash(i8* %47)
  %49 = call i32 @hashmap_entry_init(i32* %46, i32 %48)
  %50 = load i32 (%struct.subprocess_entry.0*)*, i32 (%struct.subprocess_entry.0*)** %9, align 8
  %51 = load %struct.subprocess_entry*, %struct.subprocess_entry** %7, align 8
  %52 = bitcast %struct.subprocess_entry* %51 to %struct.subprocess_entry.0*
  %53 = call i32 %50(%struct.subprocess_entry.0* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %44
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  %59 = load %struct.hashmap*, %struct.hashmap** %6, align 8
  %60 = load %struct.subprocess_entry*, %struct.subprocess_entry** %7, align 8
  %61 = call i32 @subprocess_stop(%struct.hashmap* %59, %struct.subprocess_entry* %60)
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %5, align 4
  br label %68

63:                                               ; preds = %44
  %64 = load %struct.hashmap*, %struct.hashmap** %6, align 8
  %65 = load %struct.subprocess_entry*, %struct.subprocess_entry** %7, align 8
  %66 = getelementptr inbounds %struct.subprocess_entry, %struct.subprocess_entry* %65, i32 0, i32 1
  %67 = call i32 @hashmap_add(%struct.hashmap* %64, i32* %66)
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %63, %56, %40
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @child_process_init(%struct.child_process*) #1

declare dso_local i32 @argv_array_push(i32*, i8*) #1

declare dso_local i32 @start_command(%struct.child_process*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @hashmap_entry_init(i32*, i32) #1

declare dso_local i32 @strhash(i8*) #1

declare dso_local i32 @subprocess_stop(%struct.hashmap*, %struct.subprocess_entry*) #1

declare dso_local i32 @hashmap_add(%struct.hashmap*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
