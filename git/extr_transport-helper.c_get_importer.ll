; ModuleID = '/home/carl/AnghaBench/git/extr_transport-helper.c_get_importer.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport-helper.c_get_importer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transport = type { %struct.helper_data* }
%struct.helper_data = type { i64 }
%struct.child_process = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [12 x i8] c"fast-import\00", align 1
@debug = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"--stats\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"--cat-blob-fd=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.transport*, %struct.child_process*)* @get_importer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_importer(%struct.transport* %0, %struct.child_process* %1) #0 {
  %3 = alloca %struct.transport*, align 8
  %4 = alloca %struct.child_process*, align 8
  %5 = alloca %struct.child_process*, align 8
  %6 = alloca %struct.helper_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.transport* %0, %struct.transport** %3, align 8
  store %struct.child_process* %1, %struct.child_process** %4, align 8
  %9 = load %struct.transport*, %struct.transport** %3, align 8
  %10 = call %struct.child_process* @get_helper(%struct.transport* %9)
  store %struct.child_process* %10, %struct.child_process** %5, align 8
  %11 = load %struct.transport*, %struct.transport** %3, align 8
  %12 = getelementptr inbounds %struct.transport, %struct.transport* %11, i32 0, i32 0
  %13 = load %struct.helper_data*, %struct.helper_data** %12, align 8
  store %struct.helper_data* %13, %struct.helper_data** %6, align 8
  %14 = load %struct.child_process*, %struct.child_process** %4, align 8
  %15 = call i32 @child_process_init(%struct.child_process* %14)
  %16 = load %struct.child_process*, %struct.child_process** %5, align 8
  %17 = getelementptr inbounds %struct.child_process, %struct.child_process* %16, i32 0, i32 3
  %18 = load i8*, i8** %17, align 8
  %19 = call i8* @xdup(i8* %18)
  %20 = load %struct.child_process*, %struct.child_process** %4, align 8
  %21 = getelementptr inbounds %struct.child_process, %struct.child_process* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load %struct.child_process*, %struct.child_process** %4, align 8
  %23 = getelementptr inbounds %struct.child_process, %struct.child_process* %22, i32 0, i32 1
  %24 = call i32 @argv_array_push(i32* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.child_process*, %struct.child_process** %4, align 8
  %26 = getelementptr inbounds %struct.child_process, %struct.child_process* %25, i32 0, i32 1
  %27 = load i64, i64* @debug, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %31 = call i32 @argv_array_push(i32* %26, i8* %30)
  %32 = load %struct.helper_data*, %struct.helper_data** %6, align 8
  %33 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %2
  %37 = load %struct.child_process*, %struct.child_process** %5, align 8
  %38 = getelementptr inbounds %struct.child_process, %struct.child_process* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = call i8* @xdup(i8* %39)
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* %7, align 4
  %42 = load %struct.child_process*, %struct.child_process** %4, align 8
  %43 = getelementptr inbounds %struct.child_process, %struct.child_process* %42, i32 0, i32 1
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @argv_array_pushf(i32* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %36, %2
  %47 = load %struct.child_process*, %struct.child_process** %4, align 8
  %48 = getelementptr inbounds %struct.child_process, %struct.child_process* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.child_process*, %struct.child_process** %4, align 8
  %50 = call i32 @start_command(%struct.child_process* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local %struct.child_process* @get_helper(%struct.transport*) #1

declare dso_local i32 @child_process_init(%struct.child_process*) #1

declare dso_local i8* @xdup(i8*) #1

declare dso_local i32 @argv_array_push(i32*, i8*) #1

declare dso_local i32 @argv_array_pushf(i32*, i8*, i32) #1

declare dso_local i32 @start_command(%struct.child_process*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
