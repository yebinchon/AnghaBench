; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_read_expr.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_read_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_tree = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"read_nat_expr: constructor = 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"x = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_tree* @read_expr(i32* %0) #0 {
  %2 = alloca %struct.tl_tree*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = call i32 (...) @tl_parse_int()
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* @verbosity, align 4
  %7 = icmp sge i32 %6, 2
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @stderr, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %20 [
    i32 129, label %14
    i32 128, label %17
  ]

14:                                               ; preds = %12
  %15 = load i32*, i32** %3, align 8
  %16 = call %struct.tl_tree* @read_nat_expr(i32* %15)
  store %struct.tl_tree* %16, %struct.tl_tree** %2, align 8
  br label %28

17:                                               ; preds = %12
  %18 = load i32*, i32** %3, align 8
  %19 = call %struct.tl_tree* @read_type_expr(i32* %18)
  store %struct.tl_tree* %19, %struct.tl_tree** %2, align 8
  br label %28

20:                                               ; preds = %12
  %21 = load i32, i32* @verbosity, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* @stderr, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %23, %20
  store %struct.tl_tree* null, %struct.tl_tree** %2, align 8
  br label %28

28:                                               ; preds = %27, %17, %14
  %29 = load %struct.tl_tree*, %struct.tl_tree** %2, align 8
  ret %struct.tl_tree* %29
}

declare dso_local i32 @tl_parse_int(...) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local %struct.tl_tree* @read_nat_expr(i32*) #1

declare dso_local %struct.tl_tree* @read_type_expr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
