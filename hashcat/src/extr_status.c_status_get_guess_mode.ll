; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_status.c_status_get_guess_mode.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_status.c_status_get_guess_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_9__ = type { i64 }

@WL_MODE_FILE = common dso_local global i64 0, align 8
@COMBINATOR_MODE_BASE_LEFT = common dso_local global i64 0, align 8
@ATTACK_MODE_STRAIGHT = common dso_local global i64 0, align 8
@GUESS_MODE_STRAIGHT_FILE_RULES_FILE = common dso_local global i32 0, align 4
@GUESS_MODE_STRAIGHT_FILE_RULES_GEN = common dso_local global i32 0, align 4
@GUESS_MODE_STRAIGHT_FILE = common dso_local global i32 0, align 4
@GUESS_MODE_STRAIGHT_STDIN_RULES_FILE = common dso_local global i32 0, align 4
@GUESS_MODE_STRAIGHT_STDIN_RULES_GEN = common dso_local global i32 0, align 4
@GUESS_MODE_STRAIGHT_STDIN = common dso_local global i32 0, align 4
@ATTACK_MODE_COMBI = common dso_local global i64 0, align 8
@GUESS_MODE_COMBINATOR_BASE_LEFT = common dso_local global i32 0, align 4
@GUESS_MODE_COMBINATOR_BASE_RIGHT = common dso_local global i32 0, align 4
@ATTACK_MODE_BF = common dso_local global i64 0, align 8
@GUESS_MODE_MASK_CS = common dso_local global i32 0, align 4
@GUESS_MODE_MASK = common dso_local global i32 0, align 4
@ATTACK_MODE_HYBRID1 = common dso_local global i64 0, align 8
@GUESS_MODE_HYBRID1_CS = common dso_local global i32 0, align 4
@GUESS_MODE_HYBRID1 = common dso_local global i32 0, align 4
@ATTACK_MODE_HYBRID2 = common dso_local global i64 0, align 8
@GUESS_MODE_HYBRID2_CS = common dso_local global i32 0, align 4
@GUESS_MODE_HYBRID2 = common dso_local global i32 0, align 4
@GUESS_MODE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @status_get_guess_mode(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %4, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %5, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @WL_MODE_FILE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 1, i32* %8, align 4
  br label %33

33:                                               ; preds = %32, %27
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 1, i32* %9, align 4
  br label %39

39:                                               ; preds = %38, %33
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @COMBINATOR_MODE_BASE_LEFT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 1, i32* %10, align 4
  br label %46

46:                                               ; preds = %45, %39
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 1, i32* %11, align 4
  br label %52

52:                                               ; preds = %51, %46
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 1, i32* %11, align 4
  br label %58

58:                                               ; preds = %57, %52
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 1, i32* %11, align 4
  br label %64

64:                                               ; preds = %63, %58
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 1, i32* %11, align 4
  br label %70

70:                                               ; preds = %69, %64
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ATTACK_MODE_STRAIGHT, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %103

76:                                               ; preds = %70
  %77 = load i32, i32* %7, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %91

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @GUESS_MODE_STRAIGHT_FILE_RULES_FILE, align 4
  store i32 %83, i32* %2, align 4
  br label %157

84:                                               ; preds = %79
  %85 = load i32, i32* %9, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* @GUESS_MODE_STRAIGHT_FILE_RULES_GEN, align 4
  store i32 %88, i32* %2, align 4
  br label %157

89:                                               ; preds = %84
  %90 = load i32, i32* @GUESS_MODE_STRAIGHT_FILE, align 4
  store i32 %90, i32* %2, align 4
  br label %157

91:                                               ; preds = %76
  %92 = load i32, i32* %8, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32, i32* @GUESS_MODE_STRAIGHT_STDIN_RULES_FILE, align 4
  store i32 %95, i32* %2, align 4
  br label %157

96:                                               ; preds = %91
  %97 = load i32, i32* %9, align 4
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32, i32* @GUESS_MODE_STRAIGHT_STDIN_RULES_GEN, align 4
  store i32 %100, i32* %2, align 4
  br label %157

101:                                              ; preds = %96
  %102 = load i32, i32* @GUESS_MODE_STRAIGHT_STDIN, align 4
  store i32 %102, i32* %2, align 4
  br label %157

103:                                              ; preds = %70
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @ATTACK_MODE_COMBI, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load i32, i32* %10, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i32, i32* @GUESS_MODE_COMBINATOR_BASE_LEFT, align 4
  store i32 %113, i32* %2, align 4
  br label %157

114:                                              ; preds = %109
  %115 = load i32, i32* @GUESS_MODE_COMBINATOR_BASE_RIGHT, align 4
  store i32 %115, i32* %2, align 4
  br label %157

116:                                              ; preds = %103
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @ATTACK_MODE_BF, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %116
  %123 = load i32, i32* %11, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i32, i32* @GUESS_MODE_MASK_CS, align 4
  store i32 %126, i32* %2, align 4
  br label %157

127:                                              ; preds = %122
  %128 = load i32, i32* @GUESS_MODE_MASK, align 4
  store i32 %128, i32* %2, align 4
  br label %157

129:                                              ; preds = %116
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @ATTACK_MODE_HYBRID1, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %129
  %136 = load i32, i32* %11, align 4
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i32, i32* @GUESS_MODE_HYBRID1_CS, align 4
  store i32 %139, i32* %2, align 4
  br label %157

140:                                              ; preds = %135
  %141 = load i32, i32* @GUESS_MODE_HYBRID1, align 4
  store i32 %141, i32* %2, align 4
  br label %157

142:                                              ; preds = %129
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @ATTACK_MODE_HYBRID2, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %142
  %149 = load i32, i32* %11, align 4
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = load i32, i32* @GUESS_MODE_HYBRID2_CS, align 4
  store i32 %152, i32* %2, align 4
  br label %157

153:                                              ; preds = %148
  %154 = load i32, i32* @GUESS_MODE_HYBRID2, align 4
  store i32 %154, i32* %2, align 4
  br label %157

155:                                              ; preds = %142
  %156 = load i32, i32* @GUESS_MODE_NONE, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %155, %153, %151, %140, %138, %127, %125, %114, %112, %101, %99, %94, %89, %87, %82
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
