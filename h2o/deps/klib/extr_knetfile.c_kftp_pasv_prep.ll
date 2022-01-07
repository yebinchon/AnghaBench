; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_knetfile.c_kftp_pasv_prep.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_knetfile.c_kftp_pasv_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"PASV\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%d,%d,%d,%d,%d,%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @kftp_pasv_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kftp_pasv_prep(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [6 x i32], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = call i32 @kftp_send_cmd(%struct.TYPE_4__* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1)
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  br label %11

11:                                               ; preds = %24, %1
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 40
  br label %21

21:                                               ; preds = %16, %11
  %22 = phi i1 [ false, %11 ], [ %20, %16 ]
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %23
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %4, align 8
  br label %11

27:                                               ; preds = %21
  %28 = load i8*, i8** %4, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 40
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 -1, i32* %2, align 4
  br label %58

33:                                               ; preds = %27
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %4, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %38 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  %39 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  %40 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  %41 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  %42 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  %43 = call i32 @sscanf(i8* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %37, i32* %38, i32* %39, i32* %40, i32* %41, i32* %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %48 = call i32 @memcpy(i32 %46, i32* %47, i32 16)
  %49 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  %50 = load i32, i32* %49, align 16
  %51 = shl i32 %50, 8
  %52 = and i32 %51, 65280
  %53 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %52, %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %33, %32
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @kftp_send_cmd(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
