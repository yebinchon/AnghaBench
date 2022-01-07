; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_keygen.c_tv_keygen.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_keygen.c_tv_keygen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i8*)*, i32, i32 }

@tv_keygen.tvs = internal constant [23 x %struct.TYPE_2__] [%struct.TYPE_2__ { i32 156, i32 (i8*)* inttoptr (i64 163 to i32 (i8*)*), i32 0, i32 0 }, %struct.TYPE_2__ { i32 161, i32 (i8*)* inttoptr (i64 162 to i32 (i8*)*), i32 0, i32 0 }, %struct.TYPE_2__ { i32 170, i32 (i8*)* inttoptr (i64 171 to i32 (i8*)*), i32 0, i32 0 }, %struct.TYPE_2__ { i32 157, i32 (i8*)* inttoptr (i64 158 to i32 (i8*)*), i32 0, i32 0 }, %struct.TYPE_2__ { i32 159, i32 (i8*)* inttoptr (i64 160 to i32 (i8*)*), i32 0, i32 0 }, %struct.TYPE_2__ { i32 152, i32 (i8*)* inttoptr (i64 155 to i32 (i8*)*), i32 0, i32 0 }, %struct.TYPE_2__ { i32 153, i32 (i8*)* inttoptr (i64 154 to i32 (i8*)*), i32 0, i32 0 }, %struct.TYPE_2__ { i32 150, i32 (i8*)* inttoptr (i64 151 to i32 (i8*)*), i32 0, i32 0 }, %struct.TYPE_2__ { i32 148, i32 (i8*)* inttoptr (i64 149 to i32 (i8*)*), i32 0, i32 0 }, %struct.TYPE_2__ { i32 146, i32 (i8*)* inttoptr (i64 147 to i32 (i8*)*), i32 0, i32 0 }, %struct.TYPE_2__ { i32 167, i32 (i8*)* inttoptr (i64 168 to i32 (i8*)*), i32 0, i32 0 }, %struct.TYPE_2__ { i32 166, i32 (i8*)* inttoptr (i64 169 to i32 (i8*)*), i32 0, i32 0 }, %struct.TYPE_2__ { i32 167, i32 (i8*)* inttoptr (i64 168 to i32 (i8*)*), i32 0, i32 0 }, %struct.TYPE_2__ { i32 164, i32 (i8*)* inttoptr (i64 165 to i32 (i8*)*), i32 0, i32 0 }, %struct.TYPE_2__ { i32 142, i32 (i8*)* inttoptr (i64 143 to i32 (i8*)*), i32 0, i32 0 }, %struct.TYPE_2__ { i32 144, i32 (i8*)* inttoptr (i64 145 to i32 (i8*)*), i32 0, i32 0 }, %struct.TYPE_2__ { i32 140, i32 (i8*)* inttoptr (i64 141 to i32 (i8*)*), i32 0, i32 0 }, %struct.TYPE_2__ { i32 138, i32 (i8*)* inttoptr (i64 139 to i32 (i8*)*), i32 0, i32 0 }, %struct.TYPE_2__ { i32 132, i32 (i8*)* inttoptr (i64 137 to i32 (i8*)*), i32 0, i32 0 }, %struct.TYPE_2__ { i32 133, i32 (i8*)* inttoptr (i64 136 to i32 (i8*)*), i32 0, i32 0 }, %struct.TYPE_2__ { i32 134, i32 (i8*)* inttoptr (i64 135 to i32 (i8*)*), i32 0, i32 0 }, %struct.TYPE_2__ { i32 130, i32 (i8*)* inttoptr (i64 131 to i32 (i8*)*), i32 0, i32 0 }, %struct.TYPE_2__ { i32 128, i32 (i8*)* inttoptr (i64 129 to i32 (i8*)*), i32 0, i32 0 }], align 16
@.str = private unnamed_addr constant [38 x i8] c"Buffer underflow with test vector %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"tv_keygen: ok\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tv_keygen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tv_keygen() #0 {
  %1 = alloca %struct.TYPE_2__*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %57, %0
  %6 = load i64, i64* %3, align 8
  %7 = icmp ult i64 %6, 23
  br i1 %7, label %8, label %60

8:                                                ; preds = %5
  %9 = load i64, i64* %3, align 8
  %10 = getelementptr inbounds [23 x %struct.TYPE_2__], [23 x %struct.TYPE_2__]* @tv_keygen.tvs, i64 0, i64 %9
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %1, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @sodium_malloc(i32 %13)
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %2, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %16, i64 %21
  store i8 0, i8* %22, align 1
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %44, %8
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 10000
  br i1 %25, label %26, label %47

26:                                               ; preds = %23
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32 (i8*)*, i32 (i8*)** %28, align 8
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 %29(i8* %30)
  %32 = load i8*, i8** %2, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %32, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %26
  br label %47

43:                                               ; preds = %26
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %23

47:                                               ; preds = %42, %23
  %48 = load i8*, i8** %2, align 8
  %49 = call i32 @sodium_free(i8* %48)
  %50 = load i32, i32* %4, align 4
  %51 = icmp sge i32 %50, 10000
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i64, i64* %3, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %52, %47
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %3, align 8
  br label %5

60:                                               ; preds = %5
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i64 @sodium_malloc(i32) #1

declare dso_local i32 @sodium_free(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
