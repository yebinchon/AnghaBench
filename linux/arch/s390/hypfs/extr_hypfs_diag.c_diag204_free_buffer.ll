; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_hypfs_diag.c_diag204_free_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_hypfs_diag.c_diag204_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@diag204_buf = common dso_local global i32* null, align 8
@diag204_buf_vmalloc = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @diag204_free_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diag204_free_buffer() #0 {
  %1 = load i32*, i32** @diag204_buf, align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %15

4:                                                ; preds = %0
  %5 = load i32*, i32** @diag204_buf_vmalloc, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load i32*, i32** @diag204_buf_vmalloc, align 8
  %9 = call i32 @vfree(i32* %8)
  store i32* null, i32** @diag204_buf_vmalloc, align 8
  br label %14

10:                                               ; preds = %4
  %11 = load i32*, i32** @diag204_buf, align 8
  %12 = ptrtoint i32* %11 to i64
  %13 = call i32 @free_pages(i64 %12, i32 0)
  br label %14

14:                                               ; preds = %10, %7
  store i32* null, i32** @diag204_buf, align 8
  br label %15

15:                                               ; preds = %14, %3
  ret void
}

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
