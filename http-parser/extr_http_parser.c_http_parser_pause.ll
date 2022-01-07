; ModuleID = '/home/carl/AnghaBench/http-parser/extr_http_parser.c_http_parser_pause.c'
source_filename = "/home/carl/AnghaBench/http-parser/extr_http_parser.c_http_parser_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@HPE_OK = common dso_local global i64 0, align 8
@HPE_PAUSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @http_parser_pause(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = call i64 @HTTP_PARSER_ERRNO(%struct.TYPE_4__* %6)
  %8 = load i64, i64* @HPE_OK, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = call i64 @HTTP_PARSER_ERRNO(%struct.TYPE_4__* %11)
  %13 = load i64, i64* @HPE_PAUSED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %10, %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i64, i64* @HPE_PAUSED, align 8
  br label %25

23:                                               ; preds = %15
  %24 = load i64, i64* @HPE_OK, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i64 [ %22, %21 ], [ %24, %23 ]
  %27 = call i32 @SET_ERRNO(i64 %26)
  br label %30

28:                                               ; preds = %10
  %29 = call i32 @assert(i32 0)
  br label %30

30:                                               ; preds = %28, %25
  ret void
}

declare dso_local i64 @HTTP_PARSER_ERRNO(%struct.TYPE_4__*) #1

declare dso_local i32 @SET_ERRNO(i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
