; ModuleID = '/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_utf8.h_utf8rchr.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_utf8.h_utf8rchr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@utf8_null = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @utf8rchr(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [5 x i8], align 1
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** @utf8_null, align 8
  store i8* %11, i8** %7, align 8
  %12 = bitcast [5 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %12, i8 0, i64 5, i1 false)
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 0, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %21, %15
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 0, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %6, align 8
  br label %16

24:                                               ; preds = %16
  %25 = load i8*, i8** %6, align 8
  store i8* %25, i8** %3, align 8
  br label %169

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = and i32 -128, %27
  %29 = icmp eq i32 0, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  store i8 %32, i8* %33, align 1
  br label %113

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = and i32 -2048, %35
  %37 = icmp eq i32 0, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = ashr i32 %39, 6
  %41 = trunc i32 %40 to i8
  %42 = sext i8 %41 to i32
  %43 = or i32 192, %42
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  store i8 %44, i8* %45, align 1
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, 63
  %48 = trunc i32 %47 to i8
  %49 = sext i8 %48 to i32
  %50 = or i32 128, %49
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 1
  store i8 %51, i8* %52, align 1
  br label %112

53:                                               ; preds = %34
  %54 = load i32, i32* %5, align 4
  %55 = and i32 -65536, %54
  %56 = icmp eq i32 0, %55
  br i1 %56, label %57, label %80

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = ashr i32 %58, 12
  %60 = trunc i32 %59 to i8
  %61 = sext i8 %60 to i32
  %62 = or i32 224, %61
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  store i8 %63, i8* %64, align 1
  %65 = load i32, i32* %5, align 4
  %66 = ashr i32 %65, 6
  %67 = and i32 %66, 63
  %68 = trunc i32 %67 to i8
  %69 = sext i8 %68 to i32
  %70 = or i32 128, %69
  %71 = trunc i32 %70 to i8
  %72 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 1
  store i8 %71, i8* %72, align 1
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, 63
  %75 = trunc i32 %74 to i8
  %76 = sext i8 %75 to i32
  %77 = or i32 128, %76
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 2
  store i8 %78, i8* %79, align 1
  br label %111

80:                                               ; preds = %53
  %81 = load i32, i32* %5, align 4
  %82 = ashr i32 %81, 18
  %83 = trunc i32 %82 to i8
  %84 = sext i8 %83 to i32
  %85 = or i32 240, %84
  %86 = trunc i32 %85 to i8
  %87 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  store i8 %86, i8* %87, align 1
  %88 = load i32, i32* %5, align 4
  %89 = ashr i32 %88, 12
  %90 = and i32 %89, 63
  %91 = trunc i32 %90 to i8
  %92 = sext i8 %91 to i32
  %93 = or i32 128, %92
  %94 = trunc i32 %93 to i8
  %95 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 1
  store i8 %94, i8* %95, align 1
  %96 = load i32, i32* %5, align 4
  %97 = ashr i32 %96, 6
  %98 = and i32 %97, 63
  %99 = trunc i32 %98 to i8
  %100 = sext i8 %99 to i32
  %101 = or i32 128, %100
  %102 = trunc i32 %101 to i8
  %103 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 2
  store i8 %102, i8* %103, align 1
  %104 = load i32, i32* %5, align 4
  %105 = and i32 %104, 63
  %106 = trunc i32 %105 to i8
  %107 = sext i8 %106 to i32
  %108 = or i32 128, %107
  %109 = trunc i32 %108 to i8
  %110 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 3
  store i8 %109, i8* %110, align 1
  br label %111

111:                                              ; preds = %80, %57
  br label %112

112:                                              ; preds = %111, %38
  br label %113

113:                                              ; preds = %112, %30
  br label %114

114:                                              ; preds = %113
  br label %115

115:                                              ; preds = %166, %114
  %116 = load i8*, i8** %6, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 0, %118
  br i1 %119, label %120, label %167

120:                                              ; preds = %115
  store i64 0, i64* %9, align 8
  br label %121

121:                                              ; preds = %132, %120
  %122 = load i8*, i8** %6, align 8
  %123 = load i64, i64* %9, align 8
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = load i64, i64* %9, align 8
  %128 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %126, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %121
  %133 = load i64, i64* %9, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %9, align 8
  br label %121

135:                                              ; preds = %121
  %136 = load i64, i64* %9, align 8
  %137 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 0, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %135
  %142 = load i8*, i8** %6, align 8
  store i8* %142, i8** %7, align 8
  %143 = load i64, i64* %9, align 8
  %144 = load i8*, i8** %6, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 %143
  store i8* %145, i8** %6, align 8
  br label %166

146:                                              ; preds = %135
  %147 = load i64, i64* %9, align 8
  %148 = load i8*, i8** %6, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 %147
  store i8* %149, i8** %6, align 8
  %150 = load i8*, i8** %6, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp ne i32 0, %152
  br i1 %153, label %154, label %165

154:                                              ; preds = %146
  br label %155

155:                                              ; preds = %158, %154
  %156 = load i8*, i8** %6, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %6, align 8
  br label %158

158:                                              ; preds = %155
  %159 = load i8*, i8** %6, align 8
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = and i32 192, %161
  %163 = icmp eq i32 128, %162
  br i1 %163, label %155, label %164

164:                                              ; preds = %158
  br label %165

165:                                              ; preds = %164, %146
  br label %166

166:                                              ; preds = %165, %141
  br label %115

167:                                              ; preds = %115
  %168 = load i8*, i8** %7, align 8
  store i8* %168, i8** %3, align 8
  br label %169

169:                                              ; preds = %167, %24
  %170 = load i8*, i8** %3, align 8
  ret i8* %170
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
