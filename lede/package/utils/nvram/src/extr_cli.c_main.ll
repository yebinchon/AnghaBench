; ModuleID = '/home/carl/AnghaBench/lede/package/utils/nvram/src/extr_cli.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/package/utils/nvram/src/extr_cli.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"unset\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"Command '%s' requires an argument!\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Unknown option '%s' !\0A\00", align 1
@.str.8 = private unnamed_addr constant [291 x i8] c"Could not open nvram! Possible reasons are:\0A\09- No device found (/proc not mounted or no nvram present)\0A\09- Insufficient permissions to open mtd device\0A\09- Insufficient memory to complete operation\0A\09- Memory mapping failed or not supported\0A\09- Nvram magic not found in specific nvram partition\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 (...) @usage()
  store i32 1, i32* %3, align 4
  br label %215

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 2, %23
  br i1 %24, label %40, label %25

25:                                               ; preds = %22, %16
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 2, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %31, %25
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34, %31, %22
  store i32 1, i32* %8, align 4
  br label %41

41:                                               ; preds = %40, %34
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32* (...) @nvram_open_staging()
  br label %48

46:                                               ; preds = %41
  %47 = call i32* (...) @nvram_open_rdonly()
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32* [ %45, %44 ], [ %47, %46 ]
  store i32* %49, i32** %6, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %201

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %201

55:                                               ; preds = %52
  store i32 1, i32* %11, align 4
  br label %56

56:                                               ; preds = %184, %55
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %187

60:                                               ; preds = %56
  %61 = load i8**, i8*** %5, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %60
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @do_show(i32* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %183

73:                                               ; preds = %60
  %74 = load i8**, i8*** %5, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %73
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @do_info(i32* %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %182

86:                                               ; preds = %73
  %87 = load i8**, i8*** %5, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %86
  %95 = load i8**, i8*** %5, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %94
  %103 = load i8**, i8*** %5, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %161, label %110

110:                                              ; preds = %102, %94, %86
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  %113 = load i32, i32* %4, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %152

115:                                              ; preds = %110
  %116 = load i8**, i8*** %5, align 8
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8*, i8** %116, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 0
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  switch i32 %124, label %149 [
    i32 103, label %125
    i32 117, label %133
    i32 115, label %141
  ]

125:                                              ; preds = %115
  %126 = load i32*, i32** %6, align 8
  %127 = load i8**, i8*** %5, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @do_get(i32* %126, i8* %131)
  store i32 %132, i32* %9, align 4
  br label %149

133:                                              ; preds = %115
  %134 = load i32*, i32** %6, align 8
  %135 = load i8**, i8*** %5, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @do_unset(i32* %134, i8* %139)
  store i32 %140, i32* %9, align 4
  br label %149

141:                                              ; preds = %115
  %142 = load i32*, i32** %6, align 8
  %143 = load i8**, i8*** %5, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @do_set(i32* %142, i8* %147)
  store i32 %148, i32* %9, align 4
  br label %149

149:                                              ; preds = %115, %141, %133, %125
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %10, align 4
  br label %160

152:                                              ; preds = %110
  %153 = load i32, i32* @stderr, align 4
  %154 = load i8**, i8*** %5, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 (i32, i8*, ...) @fprintf(i32 %153, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %158)
  store i32 0, i32* %10, align 4
  br label %187

160:                                              ; preds = %149
  br label %181

161:                                              ; preds = %102
  %162 = load i8**, i8*** %5, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %162, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @strcmp(i8* %166, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %161
  store i32 1, i32* %7, align 4
  %170 = load i32, i32* %10, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %10, align 4
  br label %180

172:                                              ; preds = %161
  %173 = load i32, i32* @stderr, align 4
  %174 = load i8**, i8*** %5, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8*, i8** %174, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 (i32, i8*, ...) @fprintf(i32 %173, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %178)
  store i32 0, i32* %10, align 4
  br label %187

180:                                              ; preds = %169
  br label %181

181:                                              ; preds = %180, %160
  br label %182

182:                                              ; preds = %181, %81
  br label %183

183:                                              ; preds = %182, %68
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %11, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %11, align 4
  br label %56

187:                                              ; preds = %172, %152, %56
  %188 = load i32, i32* %8, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load i32*, i32** %6, align 8
  %192 = call i32 @nvram_commit(i32* %191)
  store i32 %192, i32* %9, align 4
  br label %193

193:                                              ; preds = %190, %187
  %194 = load i32*, i32** %6, align 8
  %195 = call i32 @nvram_close(i32* %194)
  %196 = load i32, i32* %7, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %193
  %199 = call i32 (...) @staging_to_nvram()
  store i32 %199, i32* %9, align 4
  br label %200

200:                                              ; preds = %198, %193
  br label %201

201:                                              ; preds = %200, %52, %48
  %202 = load i32*, i32** %6, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %207, label %204

204:                                              ; preds = %201
  %205 = load i32, i32* @stderr, align 4
  %206 = call i32 (i32, i8*, ...) @fprintf(i32 %205, i8* getelementptr inbounds ([291 x i8], [291 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %213

207:                                              ; preds = %201
  %208 = load i32, i32* %10, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %207
  %211 = call i32 (...) @usage()
  store i32 1, i32* %9, align 4
  br label %212

212:                                              ; preds = %210, %207
  br label %213

213:                                              ; preds = %212, %204
  %214 = load i32, i32* %9, align 4
  store i32 %214, i32* %3, align 4
  br label %215

215:                                              ; preds = %213, %14
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local i32 @usage(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @nvram_open_staging(...) #1

declare dso_local i32* @nvram_open_rdonly(...) #1

declare dso_local i32 @do_show(i32*) #1

declare dso_local i32 @do_info(i32*) #1

declare dso_local i32 @do_get(i32*, i8*) #1

declare dso_local i32 @do_unset(i32*, i8*) #1

declare dso_local i32 @do_set(i32*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @nvram_commit(i32*) #1

declare dso_local i32 @nvram_close(i32*) #1

declare dso_local i32 @staging_to_nvram(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
