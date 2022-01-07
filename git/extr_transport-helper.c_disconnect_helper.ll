; ModuleID = '/home/carl/AnghaBench/git/extr_transport-helper.c_disconnect_helper.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport-helper.c_disconnect_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transport = type { %struct.helper_data* }
%struct.helper_data = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Debug: Disconnecting.\0A\00", align 1
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.transport*)* @disconnect_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disconnect_helper(%struct.transport* %0) #0 {
  %2 = alloca %struct.transport*, align 8
  %3 = alloca %struct.helper_data*, align 8
  %4 = alloca i32, align 4
  store %struct.transport* %0, %struct.transport** %2, align 8
  %5 = load %struct.transport*, %struct.transport** %2, align 8
  %6 = getelementptr inbounds %struct.transport, %struct.transport* %5, i32 0, i32 0
  %7 = load %struct.helper_data*, %struct.helper_data** %6, align 8
  store %struct.helper_data* %7, %struct.helper_data** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.helper_data*, %struct.helper_data** %3, align 8
  %9 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %60

12:                                               ; preds = %1
  %13 = load i64, i64* @debug, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %12
  %19 = load %struct.helper_data*, %struct.helper_data** %3, align 8
  %20 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @SIGPIPE, align 4
  %25 = load i32, i32* @SIG_IGN, align 4
  %26 = call i32 @sigchain_push(i32 %24, i32 %25)
  %27 = load %struct.helper_data*, %struct.helper_data** %3, align 8
  %28 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @xwrite(i32 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %33 = load i32, i32* @SIGPIPE, align 4
  %34 = call i32 @sigchain_pop(i32 %33)
  br label %35

35:                                               ; preds = %23, %18
  %36 = load %struct.helper_data*, %struct.helper_data** %3, align 8
  %37 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @close(i32 %40)
  %42 = load %struct.helper_data*, %struct.helper_data** %3, align 8
  %43 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @close(i32 %46)
  %48 = load %struct.helper_data*, %struct.helper_data** %3, align 8
  %49 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @fclose(i32 %50)
  %52 = load %struct.helper_data*, %struct.helper_data** %3, align 8
  %53 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = call i32 @finish_command(%struct.TYPE_3__* %54)
  store i32 %55, i32* %4, align 4
  %56 = load %struct.helper_data*, %struct.helper_data** %3, align 8
  %57 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = call i32 @FREE_AND_NULL(%struct.TYPE_3__* %58)
  br label %60

60:                                               ; preds = %35, %1
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @sigchain_push(i32, i32) #1

declare dso_local i32 @xwrite(i32, i8*, i32) #1

declare dso_local i32 @sigchain_pop(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fclose(i32) #1

declare dso_local i32 @finish_command(%struct.TYPE_3__*) #1

declare dso_local i32 @FREE_AND_NULL(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
