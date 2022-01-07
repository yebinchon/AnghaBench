; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/boot/extr_als.c_verify_facilities.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/boot/extr_als.c_verify_facilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@S390_lowcore = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@als = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @verify_facilities() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 8
  %3 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 8
  %4 = call i32 @ARRAY_SIZE(i32* %3)
  %5 = call i32 @__stfle(i32* %2, i32 %4)
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %32, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32*, i32** @als, align 8
  %9 = call i32 @ARRAY_SIZE(i32* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %6
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** @als, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %16, %21
  %23 = load i32*, i32** @als, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %22, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %11
  %30 = call i32 (...) @facility_mismatch()
  br label %31

31:                                               ; preds = %29, %11
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %6

35:                                               ; preds = %6
  ret void
}

declare dso_local i32 @__stfle(i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @facility_mismatch(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
