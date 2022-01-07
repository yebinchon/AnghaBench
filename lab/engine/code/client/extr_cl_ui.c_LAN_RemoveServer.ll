; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_ui.c_LAN_RemoveServer.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_ui.c_LAN_RemoveServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@cls = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@NA_UNSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @LAN_RemoveServer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LAN_RemoveServer(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  store i32* null, i32** %5, align 8
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %20 [
    i32 129, label %11
    i32 128, label %14
    i32 130, label %14
    i32 131, label %17
  ]

11:                                               ; preds = %2
  store i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 0), i32** %5, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 5), align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 0
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %7, align 8
  br label %20

14:                                               ; preds = %2, %2
  store i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 1), i32** %5, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 4), align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 0
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %7, align 8
  br label %20

17:                                               ; preds = %2
  store i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 2), i32** %5, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 3), align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 0
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %7, align 8
  br label %20

20:                                               ; preds = %2, %17, %14, %11
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %23, label %72

23:                                               ; preds = %20
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* @NA_UNSPEC, align 4
  %26 = call i32 @NET_StringToAdr(i8* %24, i32* %8, i32 %25)
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %68, %23
  %28 = load i32, i32* %6, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %71

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @NET_CompareAdr(i32 %33, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %32
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %50, %42
  %45 = load i32, i32* %9, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 1
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %53
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %58
  %60 = call i32 @Com_Memcpy(%struct.TYPE_5__* %54, %struct.TYPE_5__* %59, i32 4)
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %44

63:                                               ; preds = %44
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %64, align 4
  br label %71

67:                                               ; preds = %32
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %27

71:                                               ; preds = %63, %27
  br label %72

72:                                               ; preds = %71, %20
  ret void
}

declare dso_local i32 @NET_StringToAdr(i8*, i32*, i32) #1

declare dso_local i64 @NET_CompareAdr(i32, i32) #1

declare dso_local i32 @Com_Memcpy(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
