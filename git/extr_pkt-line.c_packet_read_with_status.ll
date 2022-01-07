; ModuleID = '/home/carl/AnghaBench/git/extr_pkt-line.c_packet_read_with_status.c'
source_filename = "/home/carl/AnghaBench/git/extr_pkt-line.c_packet_read_with_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PACKET_READ_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"protocol error: bad line length character: %.4s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"0000\00", align 1
@PACKET_READ_FLUSH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"0001\00", align 1
@PACKET_READ_DELIM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"protocol error: bad line length %d\00", align 1
@PACKET_READ_CHOMP_NEWLINE = common dso_local global i32 0, align 4
@PACKET_READ_DIE_ON_ERR_PACKET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"ERR \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"remote error: %s\00", align 1
@PACKET_READ_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @packet_read_with_status(i32 %0, i8** %1, i64* %2, i8* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [4 x i8], align 1
  store i32 %0, i32* %9, align 4
  store i8** %1, i8*** %10, align 8
  store i64* %2, i64** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i8**, i8*** %10, align 8
  %20 = load i64*, i64** %11, align 8
  %21 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  %22 = load i32, i32* %15, align 4
  %23 = call i64 @get_packet_data(i32 %18, i8** %19, i64* %20, i8* %21, i32 4, i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %7
  %26 = load i32*, i32** %14, align 8
  store i32 -1, i32* %26, align 4
  %27 = load i32, i32* @PACKET_READ_EOF, align 4
  store i32 %27, i32* %8, align 4
  br label %128

28:                                               ; preds = %7
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  %30 = call i32 @packet_length(i8* %29)
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  %36 = call i32 (i32, ...) @die(i32 %34, i8* %35)
  br label %61

37:                                               ; preds = %28
  %38 = load i32, i32* %16, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = call i32 @packet_trace(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 0)
  %42 = load i32*, i32** %14, align 8
  store i32 0, i32* %42, align 4
  %43 = load i32, i32* @PACKET_READ_FLUSH, align 4
  store i32 %43, i32* %8, align 4
  br label %128

44:                                               ; preds = %37
  %45 = load i32, i32* %16, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = call i32 @packet_trace(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4, i32 0)
  %49 = load i32*, i32** %14, align 8
  store i32 0, i32* %49, align 4
  %50 = load i32, i32* @PACKET_READ_DELIM, align 4
  store i32 %50, i32* %8, align 4
  br label %128

51:                                               ; preds = %44
  %52 = load i32, i32* %16, align 4
  %53 = icmp slt i32 %52, 4
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* %16, align 4
  %57 = call i32 (i32, ...) @die(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %51
  br label %59

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60, %33
  %62 = load i32, i32* %16, align 4
  %63 = sub nsw i32 %62, 4
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp uge i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32, i32* %16, align 4
  %70 = call i32 (i32, ...) @die(i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %61
  %72 = load i32, i32* %9, align 4
  %73 = load i8**, i8*** %10, align 8
  %74 = load i64*, i64** %11, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %15, align 4
  %78 = call i64 @get_packet_data(i32 %72, i8** %73, i64* %74, i8* %75, i32 %76, i32 %77)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load i32*, i32** %14, align 8
  store i32 -1, i32* %81, align 4
  %82 = load i32, i32* @PACKET_READ_EOF, align 4
  store i32 %82, i32* %8, align 4
  br label %128

83:                                               ; preds = %71
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* @PACKET_READ_CHOMP_NEWLINE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %83
  %89 = load i32, i32* %16, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = load i8*, i8** %12, align 8
  %93 = load i32, i32* %16, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 10
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load i32, i32* %16, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %16, align 4
  br label %103

103:                                              ; preds = %100, %91, %88, %83
  %104 = load i8*, i8** %12, align 8
  %105 = load i32, i32* %16, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  store i8 0, i8* %107, align 1
  %108 = load i8*, i8** %12, align 8
  %109 = load i32, i32* %16, align 4
  %110 = call i32 @packet_trace(i8* %108, i32 %109, i32 0)
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* @PACKET_READ_DIE_ON_ERR_PACKET, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %103
  %116 = load i8*, i8** %12, align 8
  %117 = call i64 @starts_with(i8* %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %121 = load i8*, i8** %12, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 4
  %123 = call i32 (i32, ...) @die(i32 %120, i8* %122)
  br label %124

124:                                              ; preds = %119, %115, %103
  %125 = load i32, i32* %16, align 4
  %126 = load i32*, i32** %14, align 8
  store i32 %125, i32* %126, align 4
  %127 = load i32, i32* @PACKET_READ_NORMAL, align 4
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %124, %80, %47, %40, %25
  %129 = load i32, i32* %8, align 4
  ret i32 %129
}

declare dso_local i64 @get_packet_data(i32, i8**, i64*, i8*, i32, i32) #1

declare dso_local i32 @packet_length(i8*) #1

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @packet_trace(i8*, i32, i32) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
