; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_unwind.c_fde_pointer_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_unwind.c_fde_pointer_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DW_EH_PE_native = common dso_local global i32 0, align 4
@DW_EH_PE_abs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @fde_pointer_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fde_pointer_type(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 2
  %12 = bitcast i32* %11 to i8*
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %122

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = bitcast i32* %22 to i8*
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 122
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %126

33:                                               ; preds = %20
  %34 = load i8*, i8** %4, align 8
  store i8* %34, i8** %6, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = trunc i64 %40 to i32
  %42 = call i8* @memchr(i8* %35, i32 0, i32 %41)
  store i8* %42, i8** %4, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  store i32 -1, i32* %2, align 4
  br label %126

46:                                               ; preds = %33
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %4, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @get_uleb128(i8** %4, i8* %49)
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @get_sleb128(i8** %4, i8* %51)
  %53 = load i32, i32* %5, align 4
  %54 = icmp ule i32 %53, 1
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %4, align 8
  br label %61

58:                                               ; preds = %46
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @get_uleb128(i8** %4, i8* %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @get_uleb128(i8** %4, i8* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8*, i8** %4, align 8
  %69 = icmp ult i8* %67, %68
  br i1 %69, label %77, label %70

70:                                               ; preds = %61
  %71 = load i8*, i8** %4, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8*, i8** %7, align 8
  %76 = icmp ugt i8* %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %70, %61
  store i32 -1, i32* %2, align 4
  br label %126

78:                                               ; preds = %70
  %79 = load i8*, i8** %4, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  store i8* %82, i8** %7, align 8
  br label %83

83:                                               ; preds = %120, %78
  %84 = load i8*, i8** %6, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %6, align 8
  %86 = load i8, i8* %85, align 1
  %87 = icmp ne i8 %86, 0
  br i1 %87, label %88, label %121

88:                                               ; preds = %83
  %89 = load i8*, i8** %4, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = icmp uge i8* %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 -1, i32* %2, align 4
  br label %126

93:                                               ; preds = %88
  %94 = load i8*, i8** %6, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  switch i32 %96, label %119 [
    i32 76, label %97
    i32 80, label %100
    i32 82, label %115
  ]

97:                                               ; preds = %93
  %98 = load i8*, i8** %4, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %4, align 8
  br label %120

100:                                              ; preds = %93
  %101 = load i8*, i8** %4, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %4, align 8
  %103 = load i8, i8* %101, align 1
  %104 = sext i8 %103 to i32
  store i32 %104, i32* %9, align 4
  %105 = load i8*, i8** %7, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @read_pointer(i8** %4, i8* %105, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %100
  %110 = load i8*, i8** %4, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = icmp ugt i8* %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109, %100
  store i32 -1, i32* %2, align 4
  br label %126

114:                                              ; preds = %109
  br label %120

115:                                              ; preds = %93
  %116 = load i8*, i8** %4, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  store i32 %118, i32* %2, align 4
  br label %126

119:                                              ; preds = %93
  store i32 -1, i32* %2, align 4
  br label %126

120:                                              ; preds = %114, %97
  br label %83

121:                                              ; preds = %83
  br label %122

122:                                              ; preds = %121, %1
  %123 = load i32, i32* @DW_EH_PE_native, align 4
  %124 = load i32, i32* @DW_EH_PE_abs, align 4
  %125 = or i32 %123, %124
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %122, %119, %115, %113, %92, %77, %45, %32
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i8* @memchr(i8*, i32, i32) #1

declare dso_local i32 @get_uleb128(i8**, i8*) #1

declare dso_local i32 @get_sleb128(i8**, i8*) #1

declare dso_local i32 @read_pointer(i8**, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
