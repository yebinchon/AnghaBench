; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/extr_early_serial_console.c_parse_earlyprintk.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/extr_early_serial_console.c_parse_earlyprintk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFAULT_BAUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"earlyprintk\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@DEFAULT_SERIAL_PORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ttyS\00", align 1
@parse_earlyprintk.bases = internal constant [2 x i32] [i32 1016, i32 760], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @parse_earlyprintk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_earlyprintk() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [32 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @DEFAULT_BAUD, align 4
  store i32 %7, i32* %1, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %8 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %9 = call i64 @cmdline_find_option(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %8, i32 32)
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %116

11:                                               ; preds = %0
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %13 = call i32 @strncmp(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @DEFAULT_SERIAL_PORT, align 4
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 6
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %15, %11
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 44
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %26, %19
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %30, 7
  br i1 %31, label %32, label %64

32:                                               ; preds = %29
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = call i32 @strncmp(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %64, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = call i32 @simple_strtoull(i8* %43, i8** %5, i32 16)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8*, i8** %5, align 8
  %53 = icmp eq i8* %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47, %39
  %55 = load i32, i32* @DEFAULT_SERIAL_PORT, align 4
  store i32 %55, i32* %4, align 4
  br label %63

56:                                               ; preds = %47
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %56, %54
  br label %88

64:                                               ; preds = %32, %29
  %65 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = call i32 @strncmp(i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %87, label %71

71:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 4
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 49
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  store i32 1, i32* %6, align 4
  br label %82

82:                                               ; preds = %81, %71
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* @parse_earlyprintk.bases, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %82, %64
  br label %88

88:                                               ; preds = %87, %63
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 44
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %95, %88
  %99 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = call i32 @simple_strtoull(i8* %102, i8** %5, i32 0)
  store i32 %103, i32* %1, align 4
  %104 = load i32, i32* %1, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %98
  %107 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8*, i8** %5, align 8
  %112 = icmp eq i8* %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %106, %98
  %114 = load i32, i32* @DEFAULT_BAUD, align 4
  store i32 %114, i32* %1, align 4
  br label %115

115:                                              ; preds = %113, %106
  br label %116

116:                                              ; preds = %115, %0
  %117 = load i32, i32* %4, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* %1, align 4
  %122 = call i32 @early_serial_init(i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %116
  ret void
}

declare dso_local i64 @cmdline_find_option(i8*, i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @simple_strtoull(i8*, i8**, i32) #1

declare dso_local i32 @early_serial_init(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
