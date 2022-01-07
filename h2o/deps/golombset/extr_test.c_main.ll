; ModuleID = '/home/carl/AnghaBench/h2o/deps/golombset/extr_test.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/golombset/extr_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.keys = private unnamed_addr constant [26 x i32] [i32 151, i32 192, i32 208, i32 269, i32 461, i32 512, i32 526, i32 591, i32 662, i32 806, i32 831, i32 866, i32 890, i32 997, i32 1005, i32 1017, i32 1134, i32 1207, i32 1231, i32 1327, i32 1378, i32 1393, i32 1418, i32 1525, i32 1627, i32 1630], align 16
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"golombset_encode failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"encoded %zu entries into %zu bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"golombset_decode failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"unexpected number of outputs\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"output mismatch\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [26 x i32], align 16
  %7 = alloca i64, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca [26 x i32], align 16
  %11 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = bitcast [26 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([26 x i32]* @__const.main.keys to i8*), i64 104, i1 false)
  store i64 26, i64* %7, align 8
  store i64 1024, i64* %9, align 8
  %13 = getelementptr inbounds [26 x i32], [26 x i32]* %6, i64 0, i64 0
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %15 = call i64 @golombset_encode(i32 6, i32* %13, i64 26, i8* %14, i64* %9)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 111, i32* %3, align 4
  br label %46

20:                                               ; preds = %2
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 26, i64 %21)
  store i64 26, i64* %11, align 8
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds [26 x i32], [26 x i32]* %10, i64 0, i64 0
  %26 = call i64 @golombset_decode(i32 6, i8* %23, i64 %24, i32* %25, i64* %11)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 111, i32* %3, align 4
  br label %46

31:                                               ; preds = %20
  %32 = load i64, i64* %11, align 8
  %33 = icmp ne i64 %32, 26
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 111, i32* %3, align 4
  br label %46

37:                                               ; preds = %31
  %38 = getelementptr inbounds [26 x i32], [26 x i32]* %6, i64 0, i64 0
  %39 = getelementptr inbounds [26 x i32], [26 x i32]* %10, i64 0, i64 0
  %40 = call i64 @memcmp(i32* %38, i32* %39, i32 104)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 @fprintf(i32 %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i32 111, i32* %3, align 4
  br label %46

45:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %42, %34, %28, %17
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @golombset_encode(i32, i32*, i64, i8*, i64*) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @printf(i8*, i64, i64) #2

declare dso_local i64 @golombset_decode(i32, i8*, i64, i32*, i64*) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
