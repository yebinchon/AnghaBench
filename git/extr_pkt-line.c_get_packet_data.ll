; ModuleID = '/home/carl/AnghaBench/git/extr_pkt-line.c_get_packet_data.c'
source_filename = "/home/carl/AnghaBench/git/extr_pkt-line.c_get_packet_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"multiple sources given to packet_read\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@PACKET_READ_GENTLE_ON_EOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"the remote end hung up unexpectedly\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i64*, i8*, i32, i32)* @get_packet_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_packet_data(i32 %0, i8** %1, i64* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i8** %1, i8*** %9, align 8
  store i64* %2, i64** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %6
  %18 = load i8**, i8*** %9, align 8
  %19 = icmp ne i8** %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i8**, i8*** %9, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @BUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %20, %17, %6
  %27 = load i8**, i8*** %9, align 8
  %28 = icmp ne i8** %27, null
  br i1 %28, label %29, label %60

29:                                               ; preds = %26
  %30 = load i8**, i8*** %9, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %60

33:                                               ; preds = %29
  %34 = load i32, i32* %12, align 4
  %35 = zext i32 %34 to i64
  %36 = load i64*, i64** %10, align 8
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* %12, align 4
  %41 = zext i32 %40 to i64
  br label %45

42:                                               ; preds = %33
  %43 = load i64*, i64** %10, align 8
  %44 = load i64, i64* %43, align 8
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i64 [ %41, %39 ], [ %44, %42 ]
  store i64 %46, i64* %14, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i8**, i8*** %9, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = load i64, i64* %14, align 8
  %51 = call i32 @memcpy(i8* %47, i8* %49, i64 %50)
  %52 = load i64, i64* %14, align 8
  %53 = load i8**, i8*** %9, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 %52
  store i8* %55, i8** %53, align 8
  %56 = load i64, i64* %14, align 8
  %57 = load i64*, i64** %10, align 8
  %58 = load i64, i64* %57, align 8
  %59 = sub i64 %58, %56
  store i64 %59, i64* %57, align 8
  br label %71

60:                                               ; preds = %29, %26
  %61 = load i32, i32* %8, align 4
  %62 = load i8*, i8** %11, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i64 @read_in_full(i32 %61, i8* %62, i32 %63)
  store i64 %64, i64* %14, align 8
  %65 = load i64, i64* %14, align 8
  %66 = icmp ult i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = call i32 @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %69 = call i32 @die_errno(i32 %68)
  br label %70

70:                                               ; preds = %67, %60
  br label %71

71:                                               ; preds = %70, %45
  %72 = load i64, i64* %14, align 8
  %73 = load i32, i32* %12, align 4
  %74 = zext i32 %73 to i64
  %75 = icmp ne i64 %72, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* @PACKET_READ_GENTLE_ON_EOF, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 -1, i32* %7, align 4
  br label %88

82:                                               ; preds = %76
  %83 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %84 = call i32 @die(i32 %83)
  br label %85

85:                                               ; preds = %82, %71
  %86 = load i64, i64* %14, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %85, %81
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @read_in_full(i32, i8*, i32) #1

declare dso_local i32 @die_errno(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @die(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
