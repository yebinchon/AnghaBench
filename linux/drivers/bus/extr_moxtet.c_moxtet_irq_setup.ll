; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_moxtet.c_moxtet_irq_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_moxtet.c_moxtet_irq_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moxtet = type { i32, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32* }
%struct.TYPE_4__ = type { i32 }

@MOXTET_NIRQS = common dso_local global i32 0, align 4
@moxtet_irq_domain = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Could not add IRQ domain\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@moxtet_irq_chip = common dso_local global i32 0, align 4
@moxtet_irq_thread_fn = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"moxtet\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.moxtet*)* @moxtet_irq_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moxtet_irq_setup(%struct.moxtet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.moxtet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.moxtet* %0, %struct.moxtet** %3, align 8
  %6 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %7 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MOXTET_NIRQS, align 4
  %12 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %13 = call i32* @irq_domain_add_simple(i32 %10, i32 %11, i32 0, i32* @moxtet_irq_domain, %struct.moxtet* %12)
  %14 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %15 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  store i32* %13, i32** %16, align 8
  %17 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %18 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %24 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = call i32 @dev_err(%struct.TYPE_4__* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %77

29:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %51, %29
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @MOXTET_NIRQS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %30
  %35 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %36 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @BIT(i32 %39)
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %45 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @irq_create_mapping(i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %43, %34
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %30

54:                                               ; preds = %30
  %55 = load i32, i32* @moxtet_irq_chip, align 4
  %56 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %57 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 8
  %59 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %60 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i32 -1, i32* %61, align 4
  %62 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %63 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @moxtet_irq_thread_fn, align 4
  %66 = load i32, i32* @IRQF_ONESHOT, align 4
  %67 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %68 = call i32 @request_threaded_irq(i32 %64, i32* null, i32 %65, i32 %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.moxtet* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %54
  br label %73

72:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %77

73:                                               ; preds = %71
  %74 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %75 = call i32 @moxtet_irq_free(%struct.moxtet* %74)
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %73, %72, %22
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32* @irq_domain_add_simple(i32, i32, i32, i32*, %struct.moxtet*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @irq_create_mapping(i32*, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.moxtet*) #1

declare dso_local i32 @moxtet_irq_free(%struct.moxtet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
