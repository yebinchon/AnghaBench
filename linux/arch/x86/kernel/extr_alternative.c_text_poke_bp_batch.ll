; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_alternative.c_text_poke_bp_batch.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_alternative.c_text_poke_bp_batch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.text_poke_loc* }
%struct.text_poke_loc = type { i8*, i32, i8* }

@text_mutex = common dso_local global i32 0, align 4
@bp_patching = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@do_sync_core = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @text_poke_bp_batch(%struct.text_poke_loc* %0, i32 %1) #0 {
  %3 = alloca %struct.text_poke_loc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.text_poke_loc* %0, %struct.text_poke_loc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i8 -52, i8* %6, align 1
  %8 = call i32 @lockdep_assert_held(i32* @text_mutex)
  %9 = load %struct.text_poke_loc*, %struct.text_poke_loc** %3, align 8
  store %struct.text_poke_loc* %9, %struct.text_poke_loc** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bp_patching, i32 0, i32 1), align 8
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bp_patching, i32 0, i32 0), align 8
  %11 = call i32 (...) @smp_wmb()
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %24, %2
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load %struct.text_poke_loc*, %struct.text_poke_loc** %3, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.text_poke_loc, %struct.text_poke_loc* %17, i64 %19
  %21 = getelementptr inbounds %struct.text_poke_loc, %struct.text_poke_loc* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (i8*, ...) @text_poke(i8* %22, i8* %6, i64 1)
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %7, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %12

27:                                               ; preds = %12
  %28 = load i32, i32* @do_sync_core, align 4
  %29 = call i32 @on_each_cpu(i32 %28, i32* null, i32 1)
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %71, %27
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %74

34:                                               ; preds = %30
  %35 = load %struct.text_poke_loc*, %struct.text_poke_loc** %3, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.text_poke_loc, %struct.text_poke_loc* %35, i64 %37
  %39 = getelementptr inbounds %struct.text_poke_loc, %struct.text_poke_loc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = sub i64 %41, 1
  %43 = icmp ugt i64 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %34
  %45 = load %struct.text_poke_loc*, %struct.text_poke_loc** %3, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.text_poke_loc, %struct.text_poke_loc* %45, i64 %47
  %49 = getelementptr inbounds %struct.text_poke_loc, %struct.text_poke_loc* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load %struct.text_poke_loc*, %struct.text_poke_loc** %3, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.text_poke_loc, %struct.text_poke_loc* %52, i64 %54
  %56 = getelementptr inbounds %struct.text_poke_loc, %struct.text_poke_loc* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load %struct.text_poke_loc*, %struct.text_poke_loc** %3, align 8
  %60 = load i32, i32* %7, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.text_poke_loc, %struct.text_poke_loc* %59, i64 %61
  %63 = getelementptr inbounds %struct.text_poke_loc, %struct.text_poke_loc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = sub i64 %65, 1
  %67 = call i32 (i8*, ...) @text_poke(i8* %51, i8* %58, i64 %66)
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %44, %34
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %30

74:                                               ; preds = %30
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* @do_sync_core, align 4
  %79 = call i32 @on_each_cpu(i32 %78, i32* null, i32 1)
  br label %80

80:                                               ; preds = %77, %74
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %99, %80
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %81
  %86 = load %struct.text_poke_loc*, %struct.text_poke_loc** %3, align 8
  %87 = load i32, i32* %7, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.text_poke_loc, %struct.text_poke_loc* %86, i64 %88
  %90 = getelementptr inbounds %struct.text_poke_loc, %struct.text_poke_loc* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.text_poke_loc*, %struct.text_poke_loc** %3, align 8
  %93 = load i32, i32* %7, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.text_poke_loc, %struct.text_poke_loc* %92, i64 %94
  %96 = getelementptr inbounds %struct.text_poke_loc, %struct.text_poke_loc* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 (i8*, ...) @text_poke(i8* %91, i8* %97, i64 1)
  br label %99

99:                                               ; preds = %85
  %100 = load i32, i32* %7, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %81

102:                                              ; preds = %81
  %103 = load i32, i32* @do_sync_core, align 4
  %104 = call i32 @on_each_cpu(i32 %103, i32* null, i32 1)
  store %struct.text_poke_loc* null, %struct.text_poke_loc** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bp_patching, i32 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bp_patching, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @text_poke(i8*, ...) #1

declare dso_local i32 @on_each_cpu(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
