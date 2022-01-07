; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_libfdt-wrapper.c_fdt_wrapper_create_node.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_libfdt-wrapper.c_fdt_wrapper_create_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fdt = common dso_local global i32 0, align 4
@FDT_ERR_NOSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @fdt_wrapper_create_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fdt_wrapper_create_node(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @fdt, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @devp_offset(i8* %7)
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @fdt_add_subnode(i32 %6, i32 %8, i8* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @FDT_ERR_NOSPACE, align 4
  %13 = sub nsw i32 0, %12
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = add nsw i64 %17, 16
  %19 = call i32 @expand_buf(i64 %18)
  %20 = load i32, i32* @fdt, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @devp_offset(i8* %21)
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @fdt_add_subnode(i32 %20, i32 %22, i8* %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %15, %2
  %26 = load i32, i32* %5, align 4
  %27 = call i8* @offset_devp(i32 %26)
  ret i8* %27
}

declare dso_local i32 @fdt_add_subnode(i32, i32, i8*) #1

declare dso_local i32 @devp_offset(i8*) #1

declare dso_local i32 @expand_buf(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @offset_devp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
