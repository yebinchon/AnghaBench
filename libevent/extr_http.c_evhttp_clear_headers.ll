; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_clear_headers.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_clear_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evkeyvalq = type { i32 }
%struct.evkeyval = type { %struct.evkeyval*, %struct.evkeyval* }

@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evhttp_clear_headers(%struct.evkeyvalq* %0) #0 {
  %2 = alloca %struct.evkeyvalq*, align 8
  %3 = alloca %struct.evkeyval*, align 8
  store %struct.evkeyvalq* %0, %struct.evkeyvalq** %2, align 8
  %4 = load %struct.evkeyvalq*, %struct.evkeyvalq** %2, align 8
  %5 = call %struct.evkeyval* @TAILQ_FIRST(%struct.evkeyvalq* %4)
  store %struct.evkeyval* %5, %struct.evkeyval** %3, align 8
  br label %6

6:                                                ; preds = %24, %1
  %7 = load %struct.evkeyval*, %struct.evkeyval** %3, align 8
  %8 = icmp ne %struct.evkeyval* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %6
  %10 = load %struct.evkeyvalq*, %struct.evkeyvalq** %2, align 8
  %11 = load %struct.evkeyval*, %struct.evkeyval** %3, align 8
  %12 = load i32, i32* @next, align 4
  %13 = call i32 @TAILQ_REMOVE(%struct.evkeyvalq* %10, %struct.evkeyval* %11, i32 %12)
  %14 = load %struct.evkeyval*, %struct.evkeyval** %3, align 8
  %15 = getelementptr inbounds %struct.evkeyval, %struct.evkeyval* %14, i32 0, i32 1
  %16 = load %struct.evkeyval*, %struct.evkeyval** %15, align 8
  %17 = call i32 @mm_free(%struct.evkeyval* %16)
  %18 = load %struct.evkeyval*, %struct.evkeyval** %3, align 8
  %19 = getelementptr inbounds %struct.evkeyval, %struct.evkeyval* %18, i32 0, i32 0
  %20 = load %struct.evkeyval*, %struct.evkeyval** %19, align 8
  %21 = call i32 @mm_free(%struct.evkeyval* %20)
  %22 = load %struct.evkeyval*, %struct.evkeyval** %3, align 8
  %23 = call i32 @mm_free(%struct.evkeyval* %22)
  br label %24

24:                                               ; preds = %9
  %25 = load %struct.evkeyvalq*, %struct.evkeyvalq** %2, align 8
  %26 = call %struct.evkeyval* @TAILQ_FIRST(%struct.evkeyvalq* %25)
  store %struct.evkeyval* %26, %struct.evkeyval** %3, align 8
  br label %6

27:                                               ; preds = %6
  ret void
}

declare dso_local %struct.evkeyval* @TAILQ_FIRST(%struct.evkeyvalq*) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.evkeyvalq*, %struct.evkeyval*, i32) #1

declare dso_local i32 @mm_free(%struct.evkeyval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
