; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_pprint_rename.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_pprint_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c" => \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i8*, i8*)* @pprint_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pprint_rename(%struct.strbuf* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strlen(i8* %22)
  store i32 %23, i32* %13, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @quote_c_style(i8* %24, %struct.strbuf* null, i32* null, i32 0)
  store i32 %25, i32* %16, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @quote_c_style(i8* %26, %struct.strbuf* null, i32* null, i32 0)
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %16, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* %17, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30, %3
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %36 = call i32 @quote_c_style(i8* %34, %struct.strbuf* %35, i32* null, i32 0)
  %37 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %38 = call i32 @strbuf_addstr(%struct.strbuf* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %41 = call i32 @quote_c_style(i8* %39, %struct.strbuf* %40, i32* null, i32 0)
  br label %221

42:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %76, %42
  %44 = load i8*, i8** %7, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load i8*, i8** %8, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load i8*, i8** %7, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8*, i8** %8, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %56, %59
  br label %61

61:                                               ; preds = %53, %48, %43
  %62 = phi i1 [ false, %48 ], [ false, %43 ], [ %60, %53 ]
  br i1 %62, label %63, label %81

63:                                               ; preds = %61
  %64 = load i8*, i8** %7, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 47
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load i8*, i8** %7, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = add nsw i64 %73, 1
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %68, %63
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %7, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %8, align 8
  br label %43

81:                                               ; preds = %61
  %82 = load i8*, i8** %5, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  store i8* %85, i8** %7, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  store i8* %89, i8** %8, align 8
  store i32 0, i32* %10, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 1, i32 0
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %141, %81
  %95 = load i8*, i8** %5, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = sub i64 0, %100
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  %103 = load i8*, i8** %7, align 8
  %104 = icmp ule i8* %102, %103
  br i1 %104, label %105, label %124

105:                                              ; preds = %94
  %106 = load i8*, i8** %6, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = sub i64 0, %111
  %113 = getelementptr inbounds i8, i8* %109, i64 %112
  %114 = load i8*, i8** %8, align 8
  %115 = icmp ule i8* %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %105
  %117 = load i8*, i8** %7, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = load i8*, i8** %8, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %119, %122
  br label %124

124:                                              ; preds = %116, %105, %94
  %125 = phi i1 [ false, %105 ], [ false, %94 ], [ %123, %116 ]
  br i1 %125, label %126, label %146

126:                                              ; preds = %124
  %127 = load i8*, i8** %7, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 47
  br i1 %130, label %131, label %141

131:                                              ; preds = %126
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = load i8*, i8** %7, align 8
  %135 = load i8*, i8** %5, align 8
  %136 = ptrtoint i8* %134 to i64
  %137 = ptrtoint i8* %135 to i64
  %138 = sub i64 %136, %137
  %139 = sub nsw i64 %133, %138
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %10, align 4
  br label %141

141:                                              ; preds = %131, %126
  %142 = load i8*, i8** %7, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 -1
  store i8* %143, i8** %7, align 8
  %144 = load i8*, i8** %8, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 -1
  store i8* %145, i8** %8, align 8
  br label %94

146:                                              ; preds = %124
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %9, align 4
  %149 = sub nsw i32 %147, %148
  %150 = load i32, i32* %10, align 4
  %151 = sub nsw i32 %149, %150
  store i32 %151, i32* %14, align 4
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* %9, align 4
  %154 = sub nsw i32 %152, %153
  %155 = load i32, i32* %10, align 4
  %156 = sub nsw i32 %154, %155
  store i32 %156, i32* %15, align 4
  %157 = load i32, i32* %14, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %146
  store i32 0, i32* %14, align 4
  br label %160

160:                                              ; preds = %159, %146
  %161 = load i32, i32* %15, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  store i32 0, i32* %15, align 4
  br label %164

164:                                              ; preds = %163, %160
  %165 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* %14, align 4
  %168 = add nsw i32 %166, %167
  %169 = load i32, i32* %15, align 4
  %170 = add nsw i32 %168, %169
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %170, %171
  %173 = add nsw i32 %172, 7
  %174 = call i32 @strbuf_grow(%struct.strbuf* %165, i32 %173)
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %10, align 4
  %177 = add nsw i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %164
  %180 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %181 = load i8*, i8** %5, align 8
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @strbuf_add(%struct.strbuf* %180, i8* %181, i32 %182)
  %184 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %185 = call i32 @strbuf_addch(%struct.strbuf* %184, i8 signext 123)
  br label %186

186:                                              ; preds = %179, %164
  %187 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %188 = load i8*, i8** %5, align 8
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = load i32, i32* %14, align 4
  %193 = call i32 @strbuf_add(%struct.strbuf* %187, i8* %191, i32 %192)
  %194 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %195 = call i32 @strbuf_addstr(%struct.strbuf* %194, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %196 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %197 = load i8*, i8** %6, align 8
  %198 = load i32, i32* %9, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %197, i64 %199
  %201 = load i32, i32* %15, align 4
  %202 = call i32 @strbuf_add(%struct.strbuf* %196, i8* %200, i32 %201)
  %203 = load i32, i32* %9, align 4
  %204 = load i32, i32* %10, align 4
  %205 = add nsw i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %221

207:                                              ; preds = %186
  %208 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %209 = call i32 @strbuf_addch(%struct.strbuf* %208, i8 signext 125)
  %210 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %211 = load i8*, i8** %5, align 8
  %212 = load i32, i32* %12, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, i8* %211, i64 %213
  %215 = load i32, i32* %10, align 4
  %216 = sext i32 %215 to i64
  %217 = sub i64 0, %216
  %218 = getelementptr inbounds i8, i8* %214, i64 %217
  %219 = load i32, i32* %10, align 4
  %220 = call i32 @strbuf_add(%struct.strbuf* %210, i8* %218, i32 %219)
  br label %221

221:                                              ; preds = %33, %207, %186
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @quote_c_style(i8*, %struct.strbuf*, i32*, i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
