; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_irq.c_uv_get_irq_domain.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_irq.c_uv_get_irq_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.fwnode_handle = type { i32 }

@uv_get_irq_domain.uv_domain = internal global %struct.irq_domain* null, align 8
@uv_get_irq_domain.uv_lock = internal global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"UV-CORE\00", align 1
@uv_domain_ops = common dso_local global i32 0, align 4
@x86_vector_domain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.irq_domain* ()* @uv_get_irq_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.irq_domain* @uv_get_irq_domain() #0 {
  %1 = alloca %struct.fwnode_handle*, align 8
  %2 = call i32 @mutex_lock(i32* @uv_get_irq_domain.uv_lock)
  %3 = load %struct.irq_domain*, %struct.irq_domain** @uv_get_irq_domain.uv_domain, align 8
  %4 = icmp ne %struct.irq_domain* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %23

6:                                                ; preds = %0
  %7 = call %struct.fwnode_handle* @irq_domain_alloc_named_fwnode(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.fwnode_handle* %7, %struct.fwnode_handle** %1, align 8
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %1, align 8
  %9 = icmp ne %struct.fwnode_handle* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  br label %23

11:                                               ; preds = %6
  %12 = load %struct.fwnode_handle*, %struct.fwnode_handle** %1, align 8
  %13 = call %struct.irq_domain* @irq_domain_create_tree(%struct.fwnode_handle* %12, i32* @uv_domain_ops, i32* null)
  store %struct.irq_domain* %13, %struct.irq_domain** @uv_get_irq_domain.uv_domain, align 8
  %14 = load %struct.fwnode_handle*, %struct.fwnode_handle** %1, align 8
  %15 = call i32 @irq_domain_free_fwnode(%struct.fwnode_handle* %14)
  %16 = load %struct.irq_domain*, %struct.irq_domain** @uv_get_irq_domain.uv_domain, align 8
  %17 = icmp ne %struct.irq_domain* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i32, i32* @x86_vector_domain, align 4
  %20 = load %struct.irq_domain*, %struct.irq_domain** @uv_get_irq_domain.uv_domain, align 8
  %21 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %18, %11
  br label %23

23:                                               ; preds = %22, %10, %5
  %24 = call i32 @mutex_unlock(i32* @uv_get_irq_domain.uv_lock)
  %25 = load %struct.irq_domain*, %struct.irq_domain** @uv_get_irq_domain.uv_domain, align 8
  ret %struct.irq_domain* %25
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.fwnode_handle* @irq_domain_alloc_named_fwnode(i8*) #1

declare dso_local %struct.irq_domain* @irq_domain_create_tree(%struct.fwnode_handle*, i32*, i32*) #1

declare dso_local i32 @irq_domain_free_fwnode(%struct.fwnode_handle*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
