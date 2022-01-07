; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-http-server.c_get_http_header.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-http-server.c_get_http_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_http_header(i8* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i8*, i8** %8, align 8
  store i8* %17, i8** %14, align 8
  %18 = load i8*, i8** %14, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  store i8* %21, i8** %15, align 8
  br label %22

22:                                               ; preds = %198, %6
  %23 = load i8*, i8** %14, align 8
  %24 = load i8*, i8** %15, align 8
  %25 = icmp ult i8* %23, %24
  br i1 %25, label %26, label %199

26:                                               ; preds = %22
  %27 = load i8*, i8** %14, align 8
  store i8* %27, i8** %16, align 8
  br label %28

28:                                               ; preds = %46, %26
  %29 = load i8*, i8** %14, align 8
  %30 = load i8*, i8** %15, align 8
  %31 = icmp ult i8* %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load i8*, i8** %14, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 58
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i8*, i8** %14, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 10
  br label %42

42:                                               ; preds = %37, %32
  %43 = phi i1 [ false, %32 ], [ %41, %37 ]
  br label %44

44:                                               ; preds = %42, %28
  %45 = phi i1 [ false, %28 ], [ %43, %42 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i8*, i8** %14, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %14, align 8
  br label %28

49:                                               ; preds = %44
  %50 = load i8*, i8** %14, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = icmp eq i8* %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  store i8 0, i8* %55, align 1
  store i32 -1, i32* %7, align 4
  br label %202

56:                                               ; preds = %49
  %57 = load i8*, i8** %14, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 58
  br i1 %60, label %61, label %176

61:                                               ; preds = %56
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = load i8*, i8** %14, align 8
  %65 = load i8*, i8** %16, align 8
  %66 = ptrtoint i8* %64 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = icmp eq i64 %63, %68
  br i1 %69, label %70, label %173

70:                                               ; preds = %61
  %71 = load i8*, i8** %12, align 8
  %72 = load i8*, i8** %16, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @strncasecmp(i8* %71, i8* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %173, label %76

76:                                               ; preds = %70
  %77 = load i8*, i8** %14, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %14, align 8
  br label %79

79:                                               ; preds = %97, %76
  %80 = load i8*, i8** %14, align 8
  %81 = load i8*, i8** %15, align 8
  %82 = icmp ult i8* %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %79
  %84 = load i8*, i8** %14, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 9
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load i8*, i8** %14, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 32
  br label %93

93:                                               ; preds = %88, %83
  %94 = phi i1 [ true, %83 ], [ %92, %88 ]
  br label %95

95:                                               ; preds = %93, %79
  %96 = phi i1 [ false, %79 ], [ %94, %93 ]
  br i1 %96, label %97, label %100

97:                                               ; preds = %95
  %98 = load i8*, i8** %14, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %14, align 8
  br label %79

100:                                              ; preds = %95
  %101 = load i8*, i8** %14, align 8
  store i8* %101, i8** %16, align 8
  br label %102

102:                                              ; preds = %118, %100
  %103 = load i8*, i8** %14, align 8
  %104 = load i8*, i8** %15, align 8
  %105 = icmp ult i8* %103, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %102
  %107 = load i8*, i8** %14, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 13
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load i8*, i8** %14, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 10
  br label %116

116:                                              ; preds = %111, %106, %102
  %117 = phi i1 [ false, %106 ], [ false, %102 ], [ %115, %111 ]
  br i1 %117, label %118, label %121

118:                                              ; preds = %116
  %119 = load i8*, i8** %14, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %14, align 8
  br label %102

121:                                              ; preds = %116
  br label %122

122:                                              ; preds = %142, %121
  %123 = load i8*, i8** %14, align 8
  %124 = load i8*, i8** %16, align 8
  %125 = icmp ugt i8* %123, %124
  br i1 %125, label %126, label %140

126:                                              ; preds = %122
  %127 = load i8*, i8** %14, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 -1
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 32
  br i1 %131, label %138, label %132

132:                                              ; preds = %126
  %133 = load i8*, i8** %14, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 -1
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 9
  br label %138

138:                                              ; preds = %132, %126
  %139 = phi i1 [ true, %126 ], [ %137, %132 ]
  br label %140

140:                                              ; preds = %138, %122
  %141 = phi i1 [ false, %122 ], [ %139, %138 ]
  br i1 %141, label %142, label %145

142:                                              ; preds = %140
  %143 = load i8*, i8** %14, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 -1
  store i8* %144, i8** %14, align 8
  br label %122

145:                                              ; preds = %140
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %11, align 4
  %148 = load i8*, i8** %14, align 8
  %149 = load i8*, i8** %16, align 8
  %150 = ptrtoint i8* %148 to i64
  %151 = ptrtoint i8* %149 to i64
  %152 = sub i64 %150, %151
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = icmp slt i64 %152, %154
  br i1 %155, label %156, label %163

156:                                              ; preds = %145
  %157 = load i8*, i8** %14, align 8
  %158 = load i8*, i8** %16, align 8
  %159 = ptrtoint i8* %157 to i64
  %160 = ptrtoint i8* %158 to i64
  %161 = sub i64 %159, %160
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %11, align 4
  br label %163

163:                                              ; preds = %156, %145
  %164 = load i8*, i8** %10, align 8
  %165 = load i8*, i8** %16, align 8
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @memcpy(i8* %164, i8* %165, i32 %166)
  %168 = load i8*, i8** %10, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  store i8 0, i8* %171, align 1
  %172 = load i32, i32* %11, align 4
  store i32 %172, i32* %7, align 4
  br label %202

173:                                              ; preds = %70, %61
  %174 = load i8*, i8** %14, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %14, align 8
  br label %176

176:                                              ; preds = %173, %56
  br label %177

177:                                              ; preds = %188, %176
  %178 = load i8*, i8** %14, align 8
  %179 = load i8*, i8** %15, align 8
  %180 = icmp ult i8* %178, %179
  br i1 %180, label %181, label %186

181:                                              ; preds = %177
  %182 = load i8*, i8** %14, align 8
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp ne i32 %184, 10
  br label %186

186:                                              ; preds = %181, %177
  %187 = phi i1 [ false, %177 ], [ %185, %181 ]
  br i1 %187, label %188, label %191

188:                                              ; preds = %186
  %189 = load i8*, i8** %14, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %14, align 8
  br label %177

191:                                              ; preds = %186
  %192 = load i8*, i8** %14, align 8
  %193 = load i8*, i8** %15, align 8
  %194 = icmp ult i8* %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load i8*, i8** %14, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %14, align 8
  br label %198

198:                                              ; preds = %195, %191
  br label %22

199:                                              ; preds = %22
  %200 = load i8*, i8** %10, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 0
  store i8 0, i8* %201, align 1
  store i32 -1, i32* %7, align 4
  br label %202

202:                                              ; preds = %199, %163, %53
  %203 = load i32, i32* %7, align 4
  ret i32 %203
}

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
