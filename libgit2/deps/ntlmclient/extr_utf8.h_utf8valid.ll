; ModuleID = '/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_utf8.h_utf8valid.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_utf8.h_utf8valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@utf8_null = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @utf8valid(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  store i8* %5, i8** %4, align 8
  br label %6

6:                                                ; preds = %168, %1
  %7 = load i8*, i8** %4, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 0, %9
  br i1 %10, label %11, label %169

11:                                               ; preds = %6
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = and i32 248, %14
  %16 = icmp eq i32 240, %15
  br i1 %16, label %17, label %68

17:                                               ; preds = %11
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = and i32 192, %21
  %23 = icmp ne i32 128, %22
  br i1 %23, label %38, label %24

24:                                               ; preds = %17
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = and i32 192, %28
  %30 = icmp ne i32 128, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 3
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = and i32 192, %35
  %37 = icmp ne i32 128, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31, %24, %17
  %39 = load i8*, i8** %4, align 8
  store i8* %39, i8** %2, align 8
  br label %171

40:                                               ; preds = %31
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 4
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = and i32 192, %44
  %46 = icmp eq i32 128, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i8*, i8** %4, align 8
  store i8* %48, i8** %2, align 8
  br label %171

49:                                               ; preds = %40
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = and i32 7, %53
  %55 = icmp eq i32 0, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = and i32 48, %60
  %62 = icmp eq i32 0, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i8*, i8** %4, align 8
  store i8* %64, i8** %2, align 8
  br label %171

65:                                               ; preds = %56, %49
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 4
  store i8* %67, i8** %4, align 8
  br label %168

68:                                               ; preds = %11
  %69 = load i8*, i8** %4, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = and i32 240, %71
  %73 = icmp eq i32 224, %72
  br i1 %73, label %74, label %118

74:                                               ; preds = %68
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = and i32 192, %78
  %80 = icmp ne i32 128, %79
  br i1 %80, label %88, label %81

81:                                               ; preds = %74
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = and i32 192, %85
  %87 = icmp ne i32 128, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %81, %74
  %89 = load i8*, i8** %4, align 8
  store i8* %89, i8** %2, align 8
  br label %171

90:                                               ; preds = %81
  %91 = load i8*, i8** %4, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 3
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = and i32 192, %94
  %96 = icmp eq i32 128, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i8*, i8** %4, align 8
  store i8* %98, i8** %2, align 8
  br label %171

99:                                               ; preds = %90
  %100 = load i8*, i8** %4, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 0
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = and i32 15, %103
  %105 = icmp eq i32 0, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %99
  %107 = load i8*, i8** %4, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = and i32 32, %110
  %112 = icmp eq i32 0, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = load i8*, i8** %4, align 8
  store i8* %114, i8** %2, align 8
  br label %171

115:                                              ; preds = %106, %99
  %116 = load i8*, i8** %4, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 3
  store i8* %117, i8** %4, align 8
  br label %167

118:                                              ; preds = %68
  %119 = load i8*, i8** %4, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = and i32 224, %121
  %123 = icmp eq i32 192, %122
  br i1 %123, label %124, label %154

124:                                              ; preds = %118
  %125 = load i8*, i8** %4, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = and i32 192, %128
  %130 = icmp ne i32 128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = load i8*, i8** %4, align 8
  store i8* %132, i8** %2, align 8
  br label %171

133:                                              ; preds = %124
  %134 = load i8*, i8** %4, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 2
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = and i32 192, %137
  %139 = icmp eq i32 128, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %133
  %141 = load i8*, i8** %4, align 8
  store i8* %141, i8** %2, align 8
  br label %171

142:                                              ; preds = %133
  %143 = load i8*, i8** %4, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 0
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = and i32 30, %146
  %148 = icmp eq i32 0, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %142
  %150 = load i8*, i8** %4, align 8
  store i8* %150, i8** %2, align 8
  br label %171

151:                                              ; preds = %142
  %152 = load i8*, i8** %4, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 2
  store i8* %153, i8** %4, align 8
  br label %166

154:                                              ; preds = %118
  %155 = load i8*, i8** %4, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = and i32 128, %157
  %159 = icmp eq i32 0, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = load i8*, i8** %4, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 1
  store i8* %162, i8** %4, align 8
  br label %165

163:                                              ; preds = %154
  %164 = load i8*, i8** %4, align 8
  store i8* %164, i8** %2, align 8
  br label %171

165:                                              ; preds = %160
  br label %166

166:                                              ; preds = %165, %151
  br label %167

167:                                              ; preds = %166, %115
  br label %168

168:                                              ; preds = %167, %65
  br label %6

169:                                              ; preds = %6
  %170 = load i8*, i8** @utf8_null, align 8
  store i8* %170, i8** %2, align 8
  br label %171

171:                                              ; preds = %169, %163, %149, %140, %131, %113, %97, %88, %63, %47, %38
  %172 = load i8*, i8** %2, align 8
  ret i8* %172
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
