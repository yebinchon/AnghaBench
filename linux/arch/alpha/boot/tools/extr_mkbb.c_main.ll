; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/boot/tools/extr_mkbb.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/boot/tools/extr_mkbb.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64*, i64, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Usage: %s device lxboot\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"lxboot read\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"expected %zd, got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"bootblock read\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"bootblock write\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 3
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = call i32 @exit(i32 0) #3
  unreachable

21:                                               ; preds = %2
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* @O_RDWR, align 4
  %26 = call i32 @open(i8* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @perror(i8* %32)
  %34 = call i32 @exit(i32 0) #3
  unreachable

35:                                               ; preds = %21
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 2
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* @O_RDONLY, align 4
  %40 = call i32 @open(i8* %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 2
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @perror(i8* %46)
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @close(i32 %48)
  %50 = call i32 @exit(i32 0) #3
  unreachable

51:                                               ; preds = %35
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @read(i32 %52, %struct.TYPE_4__* %7, i32 24)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ne i64 %55, 24
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @stderr, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 24, i32 %60)
  %62 = call i32 @exit(i32 0) #3
  unreachable

63:                                               ; preds = %51
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @read(i32 %64, %struct.TYPE_4__* %6, i32 24)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp ne i64 %67, 24
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* @stderr, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 24, i32 %72)
  %74 = call i32 @exit(i32 0) #3
  unreachable

75:                                               ; preds = %63
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i32 %77, i32* %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i64 0, i64* %79, align 8
  store i32 0, i32* %10, align 4
  br label %80

80:                                               ; preds = %93, %75
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 63
  br i1 %82, label %83, label %96

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, %89
  store i64 %92, i64* %90, align 8
  br label %93

93:                                               ; preds = %83
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %80

96:                                               ; preds = %80
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @SEEK_SET, align 4
  %99 = call i32 @lseek(i32 %97, i64 0, i32 %98)
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @write(i32 %100, %struct.TYPE_4__* %7, i32 24)
  %102 = sext i32 %101 to i64
  %103 = icmp ne i64 %102, 24
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = call i32 @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %106 = call i32 @exit(i32 0) #3
  unreachable

107:                                              ; preds = %96
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @close(i32 %108)
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @close(i32 %110)
  %112 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @read(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @lseek(i32, i64, i32) #1

declare dso_local i32 @write(i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
