; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_token_table.h_h2o_qpack_lookup_status.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_token_table.h_h2o_qpack_lookup_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"103\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"200\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"304\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"404\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"503\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"204\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"206\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"302\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"400\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"403\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"421\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"425\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"500\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_qpack_lookup_status(i64 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i32*, align 8
  %6 = bitcast %struct.TYPE_3__* %4 to i64*
  store i64 %0, i64* %6, align 4
  store i32* %1, i32** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %12 = call i64 @h2o_memis(i32 %8, i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  store i32 1, i32* %15, align 4
  store i32 24, i32* %3, align 4
  br label %148

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i64 @h2o_memis(i32 %18, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32*, i32** %5, align 8
  store i32 1, i32* %25, align 4
  store i32 25, i32* %3, align 4
  br label %148

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %32 = call i64 @h2o_memis(i32 %28, i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32*, i32** %5, align 8
  store i32 1, i32* %35, align 4
  store i32 26, i32* %3, align 4
  br label %148

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %42 = call i64 @h2o_memis(i32 %38, i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32*, i32** %5, align 8
  store i32 1, i32* %45, align 4
  store i32 27, i32* %3, align 4
  br label %148

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %52 = call i64 @h2o_memis(i32 %48, i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32*, i32** %5, align 8
  store i32 1, i32* %55, align 4
  store i32 28, i32* %3, align 4
  br label %148

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %62 = call i64 @h2o_memis(i32 %58, i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32*, i32** %5, align 8
  store i32 1, i32* %65, align 4
  store i32 63, i32* %3, align 4
  br label %148

66:                                               ; preds = %56
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %72 = call i64 @h2o_memis(i32 %68, i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32*, i32** %5, align 8
  store i32 1, i32* %75, align 4
  store i32 64, i32* %3, align 4
  br label %148

76:                                               ; preds = %66
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %82 = call i64 @h2o_memis(i32 %78, i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i32*, i32** %5, align 8
  store i32 1, i32* %85, align 4
  store i32 65, i32* %3, align 4
  br label %148

86:                                               ; preds = %76
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %92 = call i64 @h2o_memis(i32 %88, i32 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i32*, i32** %5, align 8
  store i32 1, i32* %95, align 4
  store i32 66, i32* %3, align 4
  br label %148

96:                                               ; preds = %86
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %102 = call i64 @h2o_memis(i32 %98, i32 %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = load i32*, i32** %5, align 8
  store i32 1, i32* %105, align 4
  store i32 67, i32* %3, align 4
  br label %148

106:                                              ; preds = %96
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %112 = call i64 @h2o_memis(i32 %108, i32 %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %106
  %115 = load i32*, i32** %5, align 8
  store i32 1, i32* %115, align 4
  store i32 68, i32* %3, align 4
  br label %148

116:                                              ; preds = %106
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %122 = call i64 @h2o_memis(i32 %118, i32 %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %116
  %125 = load i32*, i32** %5, align 8
  store i32 1, i32* %125, align 4
  store i32 69, i32* %3, align 4
  br label %148

126:                                              ; preds = %116
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %132 = call i64 @h2o_memis(i32 %128, i32 %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %126
  %135 = load i32*, i32** %5, align 8
  store i32 1, i32* %135, align 4
  store i32 70, i32* %3, align 4
  br label %148

136:                                              ; preds = %126
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %142 = call i64 @h2o_memis(i32 %138, i32 %140, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %136
  %145 = load i32*, i32** %5, align 8
  store i32 1, i32* %145, align 4
  store i32 71, i32* %3, align 4
  br label %148

146:                                              ; preds = %136
  %147 = load i32*, i32** %5, align 8
  store i32 0, i32* %147, align 4
  store i32 24, i32* %3, align 4
  br label %148

148:                                              ; preds = %146, %144, %134, %124, %114, %104, %94, %84, %74, %64, %54, %44, %34, %24, %14
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i64 @h2o_memis(i32, i32, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
