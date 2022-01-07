; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_err_common.c_el_annotate_subpacket.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_err_common.c_el_annotate_subpacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.el_subpacket_annotation = type { i64, i64, i64, i8**, i32, %struct.el_subpacket_annotation* }
%struct.el_subpacket = type { i64, i64, i64, i32 }

@subpacket_annotation_list = common dso_local global %struct.el_subpacket_annotation* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"%s  %s\0A\00", align 1
@err_print_prefix = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @el_annotate_subpacket(%struct.el_subpacket* %0) #0 {
  %2 = alloca %struct.el_subpacket*, align 8
  %3 = alloca %struct.el_subpacket_annotation*, align 8
  %4 = alloca i8**, align 8
  store %struct.el_subpacket* %0, %struct.el_subpacket** %2, align 8
  store i8** null, i8*** %4, align 8
  %5 = load %struct.el_subpacket_annotation*, %struct.el_subpacket_annotation** @subpacket_annotation_list, align 8
  store %struct.el_subpacket_annotation* %5, %struct.el_subpacket_annotation** %3, align 8
  br label %6

6:                                                ; preds = %43, %1
  %7 = load %struct.el_subpacket_annotation*, %struct.el_subpacket_annotation** %3, align 8
  %8 = icmp ne %struct.el_subpacket_annotation* %7, null
  br i1 %8, label %9, label %47

9:                                                ; preds = %6
  %10 = load %struct.el_subpacket_annotation*, %struct.el_subpacket_annotation** %3, align 8
  %11 = getelementptr inbounds %struct.el_subpacket_annotation, %struct.el_subpacket_annotation* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.el_subpacket*, %struct.el_subpacket** %2, align 8
  %14 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %9
  %18 = load %struct.el_subpacket_annotation*, %struct.el_subpacket_annotation** %3, align 8
  %19 = getelementptr inbounds %struct.el_subpacket_annotation, %struct.el_subpacket_annotation* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.el_subpacket*, %struct.el_subpacket** %2, align 8
  %22 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %17
  %26 = load %struct.el_subpacket_annotation*, %struct.el_subpacket_annotation** %3, align 8
  %27 = getelementptr inbounds %struct.el_subpacket_annotation, %struct.el_subpacket_annotation* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.el_subpacket*, %struct.el_subpacket** %2, align 8
  %30 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load %struct.el_subpacket_annotation*, %struct.el_subpacket_annotation** %3, align 8
  %35 = getelementptr inbounds %struct.el_subpacket_annotation, %struct.el_subpacket_annotation* %34, i32 0, i32 3
  %36 = load i8**, i8*** %35, align 8
  store i8** %36, i8*** %4, align 8
  %37 = load i32, i32* @err_print_prefix, align 4
  %38 = load %struct.el_subpacket_annotation*, %struct.el_subpacket_annotation** %3, align 8
  %39 = getelementptr inbounds %struct.el_subpacket_annotation, %struct.el_subpacket_annotation* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  br label %47

42:                                               ; preds = %25, %17, %9
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.el_subpacket_annotation*, %struct.el_subpacket_annotation** %3, align 8
  %45 = getelementptr inbounds %struct.el_subpacket_annotation, %struct.el_subpacket_annotation* %44, i32 0, i32 5
  %46 = load %struct.el_subpacket_annotation*, %struct.el_subpacket_annotation** %45, align 8
  store %struct.el_subpacket_annotation* %46, %struct.el_subpacket_annotation** %3, align 8
  br label %6

47:                                               ; preds = %33, %6
  %48 = load %struct.el_subpacket*, %struct.el_subpacket** %2, align 8
  %49 = load %struct.el_subpacket*, %struct.el_subpacket** %2, align 8
  %50 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load i8**, i8*** %4, align 8
  %53 = call i32 @mchk_dump_mem(%struct.el_subpacket* %48, i32 %51, i8** %52)
  ret void
}

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @mchk_dump_mem(%struct.el_subpacket*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
