; ModuleID = '/home/carl/AnghaBench/git/extr_transport-helper.c_transport_helper_init.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport-helper.c_transport_helper_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transport = type { i32*, i32*, %struct.helper_data* }
%struct.helper_data = type { i8*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"GIT_TRANSPORT_HELPER_DEBUG\00", align 1
@debug = common dso_local global i32 0, align 4
@vtable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transport_helper_init(%struct.transport* %0, i8* %1) #0 {
  %3 = alloca %struct.transport*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.helper_data*, align 8
  store %struct.transport* %0, %struct.transport** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call %struct.helper_data* @xcalloc(i32 1, i32 16)
  store %struct.helper_data* %6, %struct.helper_data** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load %struct.helper_data*, %struct.helper_data** %5, align 8
  %9 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %8, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @transport_check_allowed(i8* %10)
  %12 = call i64 @getenv(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* @debug, align 4
  br label %15

15:                                               ; preds = %14, %2
  %16 = load %struct.helper_data*, %struct.helper_data** %5, align 8
  %17 = load %struct.transport*, %struct.transport** %3, align 8
  %18 = getelementptr inbounds %struct.transport, %struct.transport* %17, i32 0, i32 2
  store %struct.helper_data* %16, %struct.helper_data** %18, align 8
  %19 = load %struct.transport*, %struct.transport** %3, align 8
  %20 = getelementptr inbounds %struct.transport, %struct.transport* %19, i32 0, i32 1
  store i32* @vtable, i32** %20, align 8
  %21 = load %struct.helper_data*, %struct.helper_data** %5, align 8
  %22 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %21, i32 0, i32 1
  %23 = load %struct.transport*, %struct.transport** %3, align 8
  %24 = getelementptr inbounds %struct.transport, %struct.transport* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  ret i32 0
}

declare dso_local %struct.helper_data* @xcalloc(i32, i32) #1

declare dso_local i32 @transport_check_allowed(i8*) #1

declare dso_local i64 @getenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
