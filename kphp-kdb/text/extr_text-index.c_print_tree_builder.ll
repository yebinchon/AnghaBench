; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_print_tree_builder.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_print_tree_builder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm_tree_builder = type { i32, i64*, i32* }
%struct.TYPE_3__ = type { i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"TB[%d]: %d {%d, %lld} {%d: (%d, %d), %lld}\0A\00", align 1
@PB = common dso_local global %struct.pm_tree_builder* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.pm_tree_builder*)* @print_tree_builder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_tree_builder(%struct.TYPE_3__* %0, %struct.pm_tree_builder* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.pm_tree_builder*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.pm_tree_builder* %1, %struct.pm_tree_builder** %4, align 8
  %5 = load i32, i32* @stderr, align 4
  %6 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %7 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** @PB, align 8
  %8 = ptrtoint %struct.pm_tree_builder* %6 to i64
  %9 = ptrtoint %struct.pm_tree_builder* %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 24
  %12 = trunc i64 %11 to i32
  %13 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %14 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %17 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %22 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %27 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %33 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %42 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %50 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @fprintf(i32 %5, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i64 %20, i32 %25, i64 %30, i32 %39, i32 %48, i32 %53)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i64, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
