; ModuleID = '/home/carl/AnghaBench/git/extr_transport-helper.c_udt_close_if_finished.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport-helper.c_udt_close_if_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unidirectional_transfer = type { i32, i32, i64, i32, i32 }

@SSTATE_FINISHED = common dso_local global i32 0, align 4
@SHUT_WR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Closed %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unidirectional_transfer*)* @udt_close_if_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udt_close_if_finished(%struct.unidirectional_transfer* %0) #0 {
  %2 = alloca %struct.unidirectional_transfer*, align 8
  store %struct.unidirectional_transfer* %0, %struct.unidirectional_transfer** %2, align 8
  %3 = load %struct.unidirectional_transfer*, %struct.unidirectional_transfer** %2, align 8
  %4 = getelementptr inbounds %struct.unidirectional_transfer, %struct.unidirectional_transfer* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = call i64 @STATE_NEEDS_CLOSING(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %37

8:                                                ; preds = %1
  %9 = load %struct.unidirectional_transfer*, %struct.unidirectional_transfer** %2, align 8
  %10 = getelementptr inbounds %struct.unidirectional_transfer, %struct.unidirectional_transfer* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %37, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* @SSTATE_FINISHED, align 4
  %15 = load %struct.unidirectional_transfer*, %struct.unidirectional_transfer** %2, align 8
  %16 = getelementptr inbounds %struct.unidirectional_transfer, %struct.unidirectional_transfer* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load %struct.unidirectional_transfer*, %struct.unidirectional_transfer** %2, align 8
  %18 = getelementptr inbounds %struct.unidirectional_transfer, %struct.unidirectional_transfer* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = load %struct.unidirectional_transfer*, %struct.unidirectional_transfer** %2, align 8
  %23 = getelementptr inbounds %struct.unidirectional_transfer, %struct.unidirectional_transfer* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SHUT_WR, align 4
  %26 = call i32 @shutdown(i32 %24, i32 %25)
  br label %32

27:                                               ; preds = %13
  %28 = load %struct.unidirectional_transfer*, %struct.unidirectional_transfer** %2, align 8
  %29 = getelementptr inbounds %struct.unidirectional_transfer, %struct.unidirectional_transfer* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @close(i32 %30)
  br label %32

32:                                               ; preds = %27, %21
  %33 = load %struct.unidirectional_transfer*, %struct.unidirectional_transfer** %2, align 8
  %34 = getelementptr inbounds %struct.unidirectional_transfer, %struct.unidirectional_transfer* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @transfer_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %32, %8, %1
  ret void
}

declare dso_local i64 @STATE_NEEDS_CLOSING(i32) #1

declare dso_local i32 @shutdown(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @transfer_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
