; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/src/extr_cli.c_send_pending.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/src/extr_cli.c_send_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32*)* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }

@.str = private unnamed_addr constant [15 x i8] c"sendmsg failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @send_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_pending(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca [16 x i32*], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  br label %10

10:                                               ; preds = %53, %2
  store i64 16, i64* %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds [16 x i32*], [16 x i32*]* %5, i64 0, i64 0
  %13 = call i32 @quicly_send(i32* %11, i32** %12, i64* %6)
  store i32 %13, i32* %8, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %10
  store i64 0, i64* %7, align 8
  br label %16

16:                                               ; preds = %42, %15
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds [16 x i32*], [16 x i32*]* %5, i64 0, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @send_one(i32 %21, i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %20
  store i32 0, i32* %8, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = call %struct.TYPE_5__* @quicly_get_context(i32* %30)
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %9, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %35, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds [16 x i32*], [16 x i32*]* %5, i64 0, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 %36(%struct.TYPE_4__* %37, i32* %40)
  br label %42

42:                                               ; preds = %29
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %7, align 8
  br label %16

45:                                               ; preds = %16
  br label %46

46:                                               ; preds = %45, %10
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i64, i64* %6, align 8
  %52 = icmp eq i64 %51, 16
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi i1 [ false, %47 ], [ %52, %50 ]
  br i1 %54, label %10, label %55

55:                                               ; preds = %53
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local i32 @quicly_send(i32*, i32**, i64*) #1

declare dso_local i32 @send_one(i32, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local %struct.TYPE_5__* @quicly_get_context(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
