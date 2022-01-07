; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_pack_privacy.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_pack_privacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P = common dso_local global i32* null, align 8
@Q = common dso_local global i32* null, align 8
@PL_M_CAT = common dso_local global i32 0, align 4
@PL_M_MASK = common dso_local global i32 0, align 4
@CAT_FR_FR = common dso_local global i32 0, align 4
@CAT_FR_PACKED = common dso_local global i32 0, align 4
@QL = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"packed privacy: \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %08x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pack_privacy() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32*, i32** @P, align 8
  store i32* %7, i32** %1, align 8
  %8 = load i32*, i32** @Q, align 8
  store i32* %8, i32** %2, align 8
  br label %9

9:                                                ; preds = %101, %31, %0
  %10 = load i32*, i32** %1, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %105

13:                                               ; preds = %9
  %14 = load i32*, i32** %1, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %1, align 8
  %16 = load i32, i32* %14, align 4
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @PL_M_CAT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %101

21:                                               ; preds = %13
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @PL_M_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @CAT_FR_FR, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %101

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, 31
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @PL_M_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = load i32, i32* @CAT_FR_PACKED, align 4
  %37 = or i32 %35, %36
  %38 = load i32*, i32** %2, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %2, align 8
  store i32 %37, i32* %38, align 4
  br label %9

40:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  %41 = load i32, i32* %3, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %74
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, 31
  %45 = sub nsw i32 %44, 1
  %46 = shl i32 1, %45
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load i32*, i32** %1, align 8
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %73, label %53

53:                                               ; preds = %42
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %3, align 4
  %56 = xor i32 %54, %55
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %73, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @PL_M_CAT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @PL_M_MASK, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @CAT_FR_FR, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %3, align 4
  %71 = and i32 %70, 31
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69, %63, %58, %53, %42
  br label %77

74:                                               ; preds = %69
  %75 = load i32*, i32** %1, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %1, align 8
  br label %42

77:                                               ; preds = %73
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @PL_M_MASK, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* @PL_M_MASK, align 4
  %83 = load i32, i32* %4, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @CAT_FR_PACKED, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %77
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* %4, align 4
  %91 = and i32 %90, 65535
  %92 = add nsw i32 %89, %91
  %93 = load i32*, i32** %2, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %2, align 8
  store i32 %92, i32* %93, align 4
  %95 = load i32, i32* %4, align 4
  %96 = and i32 %95, -65536
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %88, %77
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* %3, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %97, %21, %13
  %102 = load i32, i32* %3, align 4
  %103 = load i32*, i32** %2, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %2, align 8
  store i32 %102, i32* %103, align 4
  br label %9

105:                                              ; preds = %9
  %106 = load i32*, i32** %2, align 8
  %107 = load i32*, i32** @Q, align 8
  %108 = ptrtoint i32* %106 to i64
  %109 = ptrtoint i32* %107 to i64
  %110 = sub i64 %108, %109
  %111 = sdiv exact i64 %110, 4
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* @QL, align 4
  %113 = load i32, i32* @verbosity, align 4
  %114 = icmp sgt i32 %113, 2
  br i1 %114, label %115, label %136

115:                                              ; preds = %105
  %116 = load i32, i32* @stderr, align 4
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %130, %115
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @QL, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %133

122:                                              ; preds = %118
  %123 = load i32, i32* @stderr, align 4
  %124 = load i32*, i32** @Q, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i32, i8*, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %122
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %118

133:                                              ; preds = %118
  %134 = load i32, i32* @stderr, align 4
  %135 = call i32 (i32, i8*, ...) @fprintf(i32 %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %105
  %137 = load i32, i32* @QL, align 4
  ret i32 %137
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
