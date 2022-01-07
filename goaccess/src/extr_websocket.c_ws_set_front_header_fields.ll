; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_set_front_header_fields.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_set_front_header_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32, i32, i32, i32 }

@WS_ERR = common dso_local global i32 0, align 4
@WS_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @ws_set_front_header_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ws_set_front_header_fields(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__**, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store %struct.TYPE_5__** %7, %struct.TYPE_5__*** %4, align 8
  %8 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = call i32 @WS_FRM_FIN(i8 signext %13)
  %15 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 4
  store i32 %14, i32* %17, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = call i32 @WS_FRM_MASK(i8 signext %20)
  %22 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call i32 @WS_FRM_OPCODE(i8 signext %26)
  %28 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @WS_FRM_R1(i8 signext %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %1
  %36 = load i8*, i8** %5, align 8
  %37 = load i8, i8* %36, align 1
  %38 = call i64 @WS_FRM_R2(i8 signext %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load i8*, i8** %5, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i64 @WS_FRM_R3(i8 signext %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %40, %35, %1
  %46 = phi i1 [ true, %35 ], [ true, %1 ], [ %44, %40 ]
  %47 = zext i1 %46 to i32
  %48 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 8
  %51 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %45
  %57 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %56, %45
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = load i32, i32* @WS_ERR, align 4
  %65 = load i32, i32* @WS_CLOSE, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @ws_set_status(%struct.TYPE_6__* %63, i32 %66, i32 1)
  store i32 %67, i32* %2, align 4
  br label %69

68:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %62
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @WS_FRM_FIN(i8 signext) #1

declare dso_local i32 @WS_FRM_MASK(i8 signext) #1

declare dso_local i32 @WS_FRM_OPCODE(i8 signext) #1

declare dso_local i64 @WS_FRM_R1(i8 signext) #1

declare dso_local i64 @WS_FRM_R2(i8 signext) #1

declare dso_local i64 @WS_FRM_R3(i8 signext) #1

declare dso_local i32 @ws_set_status(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
