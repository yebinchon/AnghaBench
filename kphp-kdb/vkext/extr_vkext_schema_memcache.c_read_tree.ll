; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_read_tree.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_read_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_tree = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"read_tree: constructor = 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"x = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_tree* @read_tree(i32* %0) #0 {
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
  %11 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %29 [
    i32 131, label %14
    i32 130, label %17
    i32 128, label %20
    i32 129, label %23
    i32 132, label %26
  ]

14:                                               ; preds = %12
  %15 = load i32*, i32** %3, align 8
  %16 = call %struct.tl_tree* @read_num_const(i32* %15)
  store %struct.tl_tree* %16, %struct.tl_tree** %2, align 8
  br label %37

17:                                               ; preds = %12
  %18 = load i32*, i32** %3, align 8
  %19 = call %struct.tl_tree* @read_num_var(i32* %18)
  store %struct.tl_tree* %19, %struct.tl_tree** %2, align 8
  br label %37

20:                                               ; preds = %12
  %21 = load i32*, i32** %3, align 8
  %22 = call %struct.tl_tree* @read_type_var(i32* %21)
  store %struct.tl_tree* %22, %struct.tl_tree** %2, align 8
  br label %37

23:                                               ; preds = %12
  %24 = load i32*, i32** %3, align 8
  %25 = call %struct.tl_tree* @read_type(i32* %24)
  store %struct.tl_tree* %25, %struct.tl_tree** %2, align 8
  br label %37

26:                                               ; preds = %12
  %27 = load i32*, i32** %3, align 8
  %28 = call %struct.tl_tree* @read_array(i32* %27)
  store %struct.tl_tree* %28, %struct.tl_tree** %2, align 8
  br label %37

29:                                               ; preds = %12
  %30 = load i32, i32* @verbosity, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* @stderr, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %29
  store %struct.tl_tree* null, %struct.tl_tree** %2, align 8
  br label %37

37:                                               ; preds = %36, %26, %23, %20, %17, %14
  %38 = load %struct.tl_tree*, %struct.tl_tree** %2, align 8
  ret %struct.tl_tree* %38
}

declare dso_local i32 @tl_parse_int(...) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local %struct.tl_tree* @read_num_const(i32*) #1

declare dso_local %struct.tl_tree* @read_num_var(i32*) #1

declare dso_local %struct.tl_tree* @read_type_var(i32*) #1

declare dso_local %struct.tl_tree* @read_type(i32*) #1

declare dso_local %struct.tl_tree* @read_array(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
