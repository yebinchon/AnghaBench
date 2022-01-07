; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvm_vm_ioctl_get_htab_fd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvm_vm_ioctl_get_htab_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kvm_get_htab_fd = type { i32, i32 }
%struct.kvm_htab_ctx = type { i32, i32, i32, %struct.kvm* }

@KVM_GET_HTAB_BOLTED_ONLY = common dso_local global i32 0, align 4
@KVM_GET_HTAB_WRITE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"kvm-htab\00", align 1
@kvm_htab_fops = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_vm_ioctl_get_htab_fd(%struct.kvm* %0, %struct.kvm_get_htab_fd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_get_htab_fd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_htab_ctx*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_get_htab_fd* %1, %struct.kvm_get_htab_fd** %5, align 8
  %9 = load %struct.kvm_get_htab_fd*, %struct.kvm_get_htab_fd** %5, align 8
  %10 = getelementptr inbounds %struct.kvm_get_htab_fd, %struct.kvm_get_htab_fd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @KVM_GET_HTAB_BOLTED_ONLY, align 4
  %13 = load i32, i32* @KVM_GET_HTAB_WRITE, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = and i32 %11, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %92

21:                                               ; preds = %2
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.kvm_htab_ctx* @kzalloc(i32 24, i32 %22)
  store %struct.kvm_htab_ctx* %23, %struct.kvm_htab_ctx** %7, align 8
  %24 = load %struct.kvm_htab_ctx*, %struct.kvm_htab_ctx** %7, align 8
  %25 = icmp ne %struct.kvm_htab_ctx* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %92

29:                                               ; preds = %21
  %30 = load %struct.kvm*, %struct.kvm** %4, align 8
  %31 = call i32 @kvm_get_kvm(%struct.kvm* %30)
  %32 = load %struct.kvm*, %struct.kvm** %4, align 8
  %33 = load %struct.kvm_htab_ctx*, %struct.kvm_htab_ctx** %7, align 8
  %34 = getelementptr inbounds %struct.kvm_htab_ctx, %struct.kvm_htab_ctx* %33, i32 0, i32 3
  store %struct.kvm* %32, %struct.kvm** %34, align 8
  %35 = load %struct.kvm_get_htab_fd*, %struct.kvm_get_htab_fd** %5, align 8
  %36 = getelementptr inbounds %struct.kvm_get_htab_fd, %struct.kvm_get_htab_fd* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.kvm_htab_ctx*, %struct.kvm_htab_ctx** %7, align 8
  %39 = getelementptr inbounds %struct.kvm_htab_ctx, %struct.kvm_htab_ctx* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.kvm_get_htab_fd*, %struct.kvm_get_htab_fd** %5, align 8
  %41 = getelementptr inbounds %struct.kvm_get_htab_fd, %struct.kvm_get_htab_fd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.kvm_htab_ctx*, %struct.kvm_htab_ctx** %7, align 8
  %44 = getelementptr inbounds %struct.kvm_htab_ctx, %struct.kvm_htab_ctx* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.kvm_htab_ctx*, %struct.kvm_htab_ctx** %7, align 8
  %46 = getelementptr inbounds %struct.kvm_htab_ctx, %struct.kvm_htab_ctx* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = load %struct.kvm_get_htab_fd*, %struct.kvm_get_htab_fd** %5, align 8
  %48 = getelementptr inbounds %struct.kvm_get_htab_fd, %struct.kvm_get_htab_fd* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @KVM_GET_HTAB_WRITE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %29
  %54 = load i32, i32* @O_WRONLY, align 4
  br label %57

55:                                               ; preds = %29
  %56 = load i32, i32* @O_RDONLY, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  store i32 %58, i32* %8, align 4
  %59 = load %struct.kvm_htab_ctx*, %struct.kvm_htab_ctx** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @O_CLOEXEC, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @anon_inode_getfd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* @kvm_htab_fops, %struct.kvm_htab_ctx* %59, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %57
  %67 = load %struct.kvm_htab_ctx*, %struct.kvm_htab_ctx** %7, align 8
  %68 = call i32 @kfree(%struct.kvm_htab_ctx* %67)
  %69 = load %struct.kvm*, %struct.kvm** %4, align 8
  %70 = call i32 @kvm_put_kvm(%struct.kvm* %69)
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %92

72:                                               ; preds = %57
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @O_RDONLY, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %72
  %77 = load %struct.kvm*, %struct.kvm** %4, align 8
  %78 = getelementptr inbounds %struct.kvm, %struct.kvm* %77, i32 0, i32 0
  %79 = call i32 @mutex_lock(i32* %78)
  %80 = load %struct.kvm*, %struct.kvm** %4, align 8
  %81 = getelementptr inbounds %struct.kvm, %struct.kvm* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = call i32 @atomic_inc(i32* %82)
  %84 = load %struct.kvm*, %struct.kvm** %4, align 8
  %85 = getelementptr inbounds %struct.kvm, %struct.kvm* %84, i32 0, i32 1
  %86 = call i32 @synchronize_srcu_expedited(i32* %85)
  %87 = load %struct.kvm*, %struct.kvm** %4, align 8
  %88 = getelementptr inbounds %struct.kvm, %struct.kvm* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  br label %90

90:                                               ; preds = %76, %72
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %66, %26, %18
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.kvm_htab_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @kvm_get_kvm(%struct.kvm*) #1

declare dso_local i32 @anon_inode_getfd(i8*, i32*, %struct.kvm_htab_ctx*, i32) #1

declare dso_local i32 @kfree(%struct.kvm_htab_ctx*) #1

declare dso_local i32 @kvm_put_kvm(%struct.kvm*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @synchronize_srcu_expedited(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
