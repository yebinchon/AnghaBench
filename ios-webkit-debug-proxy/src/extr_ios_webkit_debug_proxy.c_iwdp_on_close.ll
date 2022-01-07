; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy.c_iwdp_on_close.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy.c_iwdp_on_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*, i8*, i32)* }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Unknown close type %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwdp_on_close(%struct.TYPE_11__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_10__*
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  switch i32 %15, label %41 [
    i32 132, label %16
    i32 130, label %21
    i32 129, label %26
    i32 128, label %31
    i32 131, label %36
  ]

16:                                               ; preds = %4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = ptrtoint i8* %18 to i32
  %20 = call i32 @iwdp_idl_close(%struct.TYPE_11__* %17, i32 %19)
  store i32 %20, i32* %5, align 4
  br label %48

21:                                               ; preds = %4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = ptrtoint i8* %23 to i32
  %25 = call i32 @iwdp_iport_close(%struct.TYPE_11__* %22, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %48

26:                                               ; preds = %4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = ptrtoint i8* %28 to i32
  %30 = call i32 @iwdp_iwi_close(%struct.TYPE_11__* %27, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %48

31:                                               ; preds = %4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = ptrtoint i8* %33 to i32
  %35 = call i32 @iwdp_iws_close(%struct.TYPE_11__* %32, i32 %34)
  store i32 %35, i32* %5, align 4
  br label %48

36:                                               ; preds = %4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = ptrtoint i8* %38 to i32
  %40 = call i32 @iwdp_ifs_close(%struct.TYPE_11__* %37, i32 %39)
  store i32 %40, i32* %5, align 4
  br label %48

41:                                               ; preds = %4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_11__*, i8*, i32)*, i32 (%struct.TYPE_11__*, i8*, i32)** %43, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 %44(%struct.TYPE_11__* %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %41, %36, %31, %26, %21, %16
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @iwdp_idl_close(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @iwdp_iport_close(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @iwdp_iwi_close(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @iwdp_iws_close(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @iwdp_ifs_close(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
