; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_devres.c_add_dr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_devres.c_add_dr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.devres_node = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.devres_node*)* @add_dr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_dr(%struct.device* %0, %struct.devres_node* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.devres_node*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.devres_node* %1, %struct.devres_node** %4, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = load %struct.devres_node*, %struct.devres_node** %4, align 8
  %7 = call i32 @devres_log(%struct.device* %5, %struct.devres_node* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.devres_node*, %struct.devres_node** %4, align 8
  %9 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %8, i32 0, i32 0
  %10 = call i32 @list_empty(i32* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.devres_node*, %struct.devres_node** %4, align 8
  %16 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = call i32 @list_add_tail(i32* %16, i32* %18)
  ret void
}

declare dso_local i32 @devres_log(%struct.device*, %struct.devres_node*, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
