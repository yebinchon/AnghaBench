; ModuleID = '/home/carl/AnghaBench/i3/testcases/extr_inject_randr1.5.c_handle_sequence.c'
source_filename = "/home/carl/AnghaBench/i3/testcases/extr_inject_randr1.5.c_handle_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.connstate = type { i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"RRGetMonitors reply!\0A\00", align 1
@getmonitors_reply = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"injecting reply\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"RRGetOutputInfo reply!\0A\00", align 1
@getoutputinfo_reply = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connstate*, i64)* @handle_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_sequence(%struct.connstate* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connstate*, align 8
  %5 = alloca i64, align 8
  store %struct.connstate* %0, %struct.connstate** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.connstate*, %struct.connstate** %4, align 8
  %8 = getelementptr inbounds %struct.connstate, %struct.connstate* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %6, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %2
  %12 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @getmonitors_reply, i32 0, i32 1), align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i64, i64* %5, align 8
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @getmonitors_reply, i32 0, i32 1), align 8
  %19 = bitcast i32* %18 to %struct.TYPE_6__*
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i64 %17, i64* %20, align 8
  %21 = load %struct.connstate*, %struct.connstate** %4, align 8
  %22 = getelementptr inbounds %struct.connstate, %struct.connstate* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @getmonitors_reply, i32 0, i32 1), align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @getmonitors_reply, i32 0, i32 0), align 8
  %28 = call i32 @writeall(i32 %25, i32* %26, i32 %27)
  %29 = call i32 @must_write(i32 %28)
  store i32 1, i32* %3, align 4
  br label %58

30:                                               ; preds = %11
  br label %31

31:                                               ; preds = %30, %2
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.connstate*, %struct.connstate** %4, align 8
  %34 = getelementptr inbounds %struct.connstate, %struct.connstate* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %31
  %38 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @getoutputinfo_reply, i32 0, i32 1), align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i64, i64* %5, align 8
  %44 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @getoutputinfo_reply, i32 0, i32 1), align 8
  %45 = bitcast i32* %44 to %struct.TYPE_6__*
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  %47 = load %struct.connstate*, %struct.connstate** %4, align 8
  %48 = getelementptr inbounds %struct.connstate, %struct.connstate* %47, i32 0, i32 2
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @getoutputinfo_reply, i32 0, i32 1), align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @getoutputinfo_reply, i32 0, i32 0), align 8
  %54 = call i32 @writeall(i32 %51, i32* %52, i32 %53)
  %55 = call i32 @must_write(i32 %54)
  store i32 1, i32* %3, align 4
  br label %58

56:                                               ; preds = %37
  br label %57

57:                                               ; preds = %56, %31
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %41, %15
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @must_write(i32) #1

declare dso_local i32 @writeall(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
