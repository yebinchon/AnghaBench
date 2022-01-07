; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic_msgr.c_mpic_msgr_number_of_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic_msgr.c_mpic_msgr_number_of_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"aliases\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"mpic-msgr-block%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mpic_msgr_number_of_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpic_msgr_number_of_blocks() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca [32 x i8], align 16
  store i32 0, i32* %1, align 4
  %4 = call %struct.device_node* @of_find_node_by_name(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %4, %struct.device_node** %2, align 8
  %5 = load %struct.device_node*, %struct.device_node** %2, align 8
  %6 = icmp ne %struct.device_node* %5, null
  br i1 %6, label %7, label %21

7:                                                ; preds = %0
  br label %8

8:                                                ; preds = %17, %7
  %9 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @snprintf(i8* %9, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  %12 = load %struct.device_node*, %struct.device_node** %2, align 8
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %14 = call i32 @of_find_property(%struct.device_node* %12, i8* %13, i32* null)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %8
  br label %20

17:                                               ; preds = %8
  %18 = load i32, i32* %1, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %1, align 4
  br label %8

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %20, %0
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local %struct.device_node* @of_find_node_by_name(i32*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @of_find_property(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
