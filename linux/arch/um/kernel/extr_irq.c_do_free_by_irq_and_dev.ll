; ModuleID = '/home/carl/AnghaBench/linux/arch/um/kernel/extr_irq.c_do_free_by_irq_and_dev.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/kernel/extr_irq.c_do_free_by_irq_and_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_entry = type { %struct.irq_fd**, i32 }
%struct.irq_fd = type { i32, i8*, i32, i64 }

@MAX_IRQ_TYPE = common dso_local global i32 0, align 4
@IGNORE_IRQ = common dso_local global i32 0, align 4
@IGNORE_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_entry*, i32, i8*, i32)* @do_free_by_irq_and_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_free_by_irq_and_dev(%struct.irq_entry* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.irq_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.irq_fd*, align 8
  store %struct.irq_entry* %0, %struct.irq_entry** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %91, %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @MAX_IRQ_TYPE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %94

15:                                               ; preds = %11
  %16 = load %struct.irq_entry*, %struct.irq_entry** %5, align 8
  %17 = getelementptr inbounds %struct.irq_entry, %struct.irq_entry* %16, i32 0, i32 0
  %18 = load %struct.irq_fd**, %struct.irq_fd*** %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.irq_fd*, %struct.irq_fd** %18, i64 %20
  %22 = load %struct.irq_fd*, %struct.irq_fd** %21, align 8
  %23 = icmp ne %struct.irq_fd* %22, null
  br i1 %23, label %24, label %90

24:                                               ; preds = %15
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @IGNORE_IRQ, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %24
  %30 = load %struct.irq_entry*, %struct.irq_entry** %5, align 8
  %31 = getelementptr inbounds %struct.irq_entry, %struct.irq_entry* %30, i32 0, i32 0
  %32 = load %struct.irq_fd**, %struct.irq_fd*** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.irq_fd*, %struct.irq_fd** %32, i64 %34
  %36 = load %struct.irq_fd*, %struct.irq_fd** %35, align 8
  %37 = getelementptr inbounds %struct.irq_fd, %struct.irq_fd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %89

41:                                               ; preds = %29, %24
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @IGNORE_DEV, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %41
  %47 = load %struct.irq_entry*, %struct.irq_entry** %5, align 8
  %48 = getelementptr inbounds %struct.irq_entry, %struct.irq_entry* %47, i32 0, i32 0
  %49 = load %struct.irq_fd**, %struct.irq_fd*** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.irq_fd*, %struct.irq_fd** %49, i64 %51
  %53 = load %struct.irq_fd*, %struct.irq_fd** %52, align 8
  %54 = getelementptr inbounds %struct.irq_fd, %struct.irq_fd* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = icmp eq i8* %55, %56
  br i1 %57, label %58, label %89

58:                                               ; preds = %46, %41
  %59 = load %struct.irq_entry*, %struct.irq_entry** %5, align 8
  %60 = getelementptr inbounds %struct.irq_entry, %struct.irq_entry* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @os_del_epoll_fd(i32 %61)
  %63 = load %struct.irq_entry*, %struct.irq_entry** %5, align 8
  %64 = getelementptr inbounds %struct.irq_entry, %struct.irq_entry* %63, i32 0, i32 0
  %65 = load %struct.irq_fd**, %struct.irq_fd*** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.irq_fd*, %struct.irq_fd** %65, i64 %67
  %69 = load %struct.irq_fd*, %struct.irq_fd** %68, align 8
  store %struct.irq_fd* %69, %struct.irq_fd** %10, align 8
  %70 = load %struct.irq_entry*, %struct.irq_entry** %5, align 8
  %71 = getelementptr inbounds %struct.irq_entry, %struct.irq_entry* %70, i32 0, i32 0
  %72 = load %struct.irq_fd**, %struct.irq_fd*** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.irq_fd*, %struct.irq_fd** %72, i64 %74
  store %struct.irq_fd* null, %struct.irq_fd** %75, align 8
  %76 = load %struct.irq_entry*, %struct.irq_entry** %5, align 8
  %77 = call i32 @assign_epoll_events_to_irq(%struct.irq_entry* %76)
  %78 = load %struct.irq_fd*, %struct.irq_fd** %10, align 8
  %79 = getelementptr inbounds %struct.irq_fd, %struct.irq_fd* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %58
  %83 = load %struct.irq_fd*, %struct.irq_fd** %10, align 8
  %84 = getelementptr inbounds %struct.irq_fd, %struct.irq_fd* %83, i32 0, i32 2
  store i32 1, i32* %84, align 8
  br label %88

85:                                               ; preds = %58
  %86 = load %struct.irq_fd*, %struct.irq_fd** %10, align 8
  %87 = call i32 @kfree(%struct.irq_fd* %86)
  br label %88

88:                                               ; preds = %85, %82
  br label %89

89:                                               ; preds = %88, %46, %29
  br label %90

90:                                               ; preds = %89, %15
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %11

94:                                               ; preds = %11
  ret void
}

declare dso_local i32 @os_del_epoll_fd(i32) #1

declare dso_local i32 @assign_epoll_events_to_irq(%struct.irq_entry*) #1

declare dso_local i32 @kfree(%struct.irq_fd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
