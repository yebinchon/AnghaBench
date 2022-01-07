; ModuleID = '/home/carl/AnghaBench/i3/src/extr_xcb.c_xcb_reply_contains_atom.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_xcb.c_xcb_reply_contains_atom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xcb_reply_contains_atom(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = icmp eq %struct.TYPE_5__* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = call i32 @xcb_get_property_value_length(%struct.TYPE_5__* %11)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %45

15:                                               ; preds = %10
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = call i64* @xcb_get_property_value(%struct.TYPE_5__* %16)
  store i64* %17, i64** %6, align 8
  %18 = icmp eq i64* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %45

20:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %41, %20
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = call i32 @xcb_get_property_value_length(%struct.TYPE_5__* %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 8
  %29 = sdiv i32 %24, %28
  %30 = icmp slt i32 %22, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %21
  %32 = load i64*, i64** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %45

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %21

44:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %39, %19, %14
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @xcb_get_property_value_length(%struct.TYPE_5__*) #1

declare dso_local i64* @xcb_get_property_value(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
