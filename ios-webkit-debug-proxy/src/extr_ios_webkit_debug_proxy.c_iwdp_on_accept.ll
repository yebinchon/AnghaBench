; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy.c_iwdp_on_accept.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy.c_iwdp_on_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, i8*, i32)* }
%struct.TYPE_6__ = type { i32 }

@TYPE_IPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unexpected accept type %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwdp_on_accept(%struct.TYPE_7__* %0, i32 %1, i8* %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_6__*
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @TYPE_IPORT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %5
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = ptrtoint i8* %22 to i32
  %24 = load i32, i32* %10, align 4
  %25 = load i8**, i8*** %11, align 8
  %26 = bitcast i8** %25 to i32*
  %27 = call i32 @iwdp_iport_accept(%struct.TYPE_7__* %21, i32 %23, i32 %24, i32* %26)
  store i32 %27, i32* %6, align 4
  br label %35

28:                                               ; preds = %5
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_7__*, i8*, i32)*, i32 (%struct.TYPE_7__*, i8*, i32)** %30, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 %31(%struct.TYPE_7__* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %28, %20
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32 @iwdp_iport_accept(%struct.TYPE_7__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
