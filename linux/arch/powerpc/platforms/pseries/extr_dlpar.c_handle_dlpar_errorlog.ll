; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_dlpar.c_handle_dlpar_errorlog.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_dlpar.c_handle_dlpar_errorlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pseries_hp_errorlog = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i8*, i8* }
%struct.TYPE_3__ = type { i8*, i8* }

@.str = private unnamed_addr constant [33 x i8] c"Invalid resource (%d) specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_dlpar_errorlog(%struct.pseries_hp_errorlog* %0) #0 {
  %2 = alloca %struct.pseries_hp_errorlog*, align 8
  %3 = alloca i32, align 4
  store %struct.pseries_hp_errorlog* %0, %struct.pseries_hp_errorlog** %2, align 8
  %4 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %2, align 8
  %5 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %46 [
    i32 133, label %7
    i32 131, label %16
    i32 132, label %25
  ]

7:                                                ; preds = %1
  %8 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %2, align 8
  %9 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load i8*, i8** %10, align 8
  %12 = call i8* @be32_to_cpu(i8* %11)
  %13 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %2, align 8
  %14 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  store i8* %12, i8** %15, align 8
  br label %46

16:                                               ; preds = %1
  %17 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %2, align 8
  %18 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* @be32_to_cpu(i8* %20)
  %22 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %2, align 8
  %23 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i8* %21, i8** %24, align 8
  br label %46

25:                                               ; preds = %1
  %26 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %2, align 8
  %27 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @be32_to_cpu(i8* %30)
  %32 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %2, align 8
  %33 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i8* %31, i8** %35, align 8
  %36 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %2, align 8
  %37 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i8* @be32_to_cpu(i8* %40)
  %42 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %2, align 8
  %43 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i8* %41, i8** %45, align 8
  br label %46

46:                                               ; preds = %25, %1, %16, %7
  %47 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %2, align 8
  %48 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %59 [
    i32 129, label %50
    i32 130, label %53
    i32 128, label %56
  ]

50:                                               ; preds = %46
  %51 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %2, align 8
  %52 = call i32 @dlpar_memory(%struct.pseries_hp_errorlog* %51)
  store i32 %52, i32* %3, align 4
  br label %66

53:                                               ; preds = %46
  %54 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %2, align 8
  %55 = call i32 @dlpar_cpu(%struct.pseries_hp_errorlog* %54)
  store i32 %55, i32* %3, align 4
  br label %66

56:                                               ; preds = %46
  %57 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %2, align 8
  %58 = call i32 @dlpar_hp_pmem(%struct.pseries_hp_errorlog* %57)
  store i32 %58, i32* %3, align 4
  br label %66

59:                                               ; preds = %46
  %60 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %2, align 8
  %61 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %59, %56, %53, %50
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i8* @be32_to_cpu(i8*) #1

declare dso_local i32 @dlpar_memory(%struct.pseries_hp_errorlog*) #1

declare dso_local i32 @dlpar_cpu(%struct.pseries_hp_errorlog*) #1

declare dso_local i32 @dlpar_hp_pmem(%struct.pseries_hp_errorlog*) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
