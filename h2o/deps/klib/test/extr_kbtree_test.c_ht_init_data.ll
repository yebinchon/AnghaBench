; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/test/extr_kbtree_test.c_ht_init_data.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/test/extr_kbtree_test.c_ht_init_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"--- generating data... \00", align 1
@data_size = common dso_local global i32 0, align 4
@int_data = common dso_local global i32* null, align 8
@str_data = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"done!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ht_init_data() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @srand48(i32 11)
  %5 = load i32, i32* @data_size, align 4
  %6 = call i64 @calloc(i32 %5, i32 4)
  %7 = inttoptr i64 %6 to i32*
  store i32* %7, i32** @int_data, align 8
  %8 = load i32, i32* @data_size, align 4
  %9 = call i64 @calloc(i32 %8, i32 8)
  %10 = inttoptr i64 %9 to i8**
  store i8** %10, i8*** @str_data, align 8
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %38, %0
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @data_size, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %11
  %16 = load i32, i32* @data_size, align 4
  %17 = call i32 (...) @drand48()
  %18 = mul nsw i32 %16, %17
  %19 = sdiv i32 %18, 4
  %20 = mul i32 %19, 271828183
  %21 = load i32*, i32** @int_data, align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 %20, i32* %24, align 4
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %26 = load i32*, i32** @int_data, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %33 = call i8* @strdup(i8* %32)
  %34 = load i8**, i8*** @str_data, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  store i8* %33, i8** %37, align 8
  br label %38

38:                                               ; preds = %15
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %1, align 4
  br label %11

41:                                               ; preds = %11
  %42 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @srand48(i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @drand48(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
