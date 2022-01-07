; ModuleID = '/home/carl/AnghaBench/glfw/deps/extr_getopt.c_getopt_long.c'
source_filename = "/home/carl/AnghaBench/glfw/deps/extr_getopt.c_getopt_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32*, i32, i64 }

@optarg = common dso_local global i8* null, align 8
@optopt = common dso_local global i64 0, align 8
@optind = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@no_argument = common dso_local global i64 0, align 8
@required_argument = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getopt_long(i32 %0, i8** %1, i8* %2, %struct.option* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.option*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.option*, align 8
  %13 = alloca %struct.option*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.option* %3, %struct.option** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.option*, %struct.option** %10, align 8
  store %struct.option* %18, %struct.option** %12, align 8
  store %struct.option* null, %struct.option** %13, align 8
  store i32 0, i32* %14, align 4
  store i64 0, i64* %15, align 8
  store i8* null, i8** %16, align 8
  store i32 -1, i32* %17, align 4
  store i8* null, i8** @optarg, align 8
  store i64 0, i64* @optopt, align 8
  %19 = load i32, i32* @optind, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %172

23:                                               ; preds = %5
  %24 = load i8**, i8*** %8, align 8
  %25 = load i32, i32* @optind, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = icmp slt i32 %29, 3
  br i1 %30, label %39, label %31

31:                                               ; preds = %23
  %32 = load i8**, i8*** %8, align 8
  %33 = load i32, i32* @optind, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strncmp(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %31, %23
  %40 = load i32, i32* %7, align 4
  %41 = load i8**, i8*** %8, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @getopt(i32 %40, i8** %41, i8* %42)
  store i32 %43, i32* %6, align 4
  br label %172

44:                                               ; preds = %31
  %45 = load i8**, i8*** %8, align 8
  %46 = load i32, i32* @optind, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  store i8* %50, i8** %16, align 8
  %51 = load i8*, i8** %16, align 8
  %52 = call i64 @strcspn(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i64 %52, i64* %15, align 8
  br label %53

53:                                               ; preds = %71, %44
  %54 = load %struct.option*, %struct.option** %12, align 8
  %55 = getelementptr inbounds %struct.option, %struct.option* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %74

58:                                               ; preds = %53
  %59 = load %struct.option*, %struct.option** %12, align 8
  %60 = getelementptr inbounds %struct.option, %struct.option* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** %16, align 8
  %63 = load i64, i64* %15, align 8
  %64 = call i64 @strncmp(i8* %61, i8* %62, i64 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load %struct.option*, %struct.option** %12, align 8
  store %struct.option* %67, %struct.option** %13, align 8
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %14, align 4
  br label %70

70:                                               ; preds = %66, %58
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.option*, %struct.option** %12, align 8
  %73 = getelementptr inbounds %struct.option, %struct.option* %72, i32 1
  store %struct.option* %73, %struct.option** %12, align 8
  br label %53

74:                                               ; preds = %53
  %75 = load i32, i32* %14, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %167

77:                                               ; preds = %74
  %78 = load i32*, i32** %11, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = load %struct.option*, %struct.option** %13, align 8
  %82 = load %struct.option*, %struct.option** %10, align 8
  %83 = ptrtoint %struct.option* %81 to i64
  %84 = ptrtoint %struct.option* %82 to i64
  %85 = sub i64 %83, %84
  %86 = sdiv exact i64 %85, 32
  %87 = trunc i64 %86 to i32
  %88 = load i32*, i32** %11, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %80, %77
  %90 = load %struct.option*, %struct.option** %13, align 8
  %91 = getelementptr inbounds %struct.option, %struct.option* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load %struct.option*, %struct.option** %13, align 8
  %96 = getelementptr inbounds %struct.option, %struct.option* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.option*, %struct.option** %13, align 8
  %99 = getelementptr inbounds %struct.option, %struct.option* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  store i32 %97, i32* %100, align 4
  br label %101

101:                                              ; preds = %94, %89
  %102 = load %struct.option*, %struct.option** %13, align 8
  %103 = getelementptr inbounds %struct.option, %struct.option* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %111

107:                                              ; preds = %101
  %108 = load %struct.option*, %struct.option** %13, align 8
  %109 = getelementptr inbounds %struct.option, %struct.option* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  br label %111

111:                                              ; preds = %107, %106
  %112 = phi i32 [ 0, %106 ], [ %110, %107 ]
  store i32 %112, i32* %17, align 4
  %113 = load %struct.option*, %struct.option** %13, align 8
  %114 = getelementptr inbounds %struct.option, %struct.option* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @no_argument, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %156

118:                                              ; preds = %111
  %119 = load i8**, i8*** %8, align 8
  %120 = load i32, i32* @optind, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = call i8* @strchr(i8* %123, i8 signext 61)
  store i8* %124, i8** @optarg, align 8
  %125 = load i8*, i8** @optarg, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %118
  %128 = load i8*, i8** @optarg, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** @optarg, align 8
  br label %130

130:                                              ; preds = %127, %118
  %131 = load %struct.option*, %struct.option** %13, align 8
  %132 = getelementptr inbounds %struct.option, %struct.option* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @required_argument, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %155

136:                                              ; preds = %130
  %137 = load i8*, i8** @optarg, align 8
  %138 = icmp eq i8* %137, null
  br i1 %138, label %139, label %150

139:                                              ; preds = %136
  %140 = load i32, i32* @optind, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* @optind, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %139
  %145 = load i8**, i8*** %8, align 8
  %146 = load i32, i32* @optind, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  %149 = load i8*, i8** %148, align 8
  store i8* %149, i8** @optarg, align 8
  br label %150

150:                                              ; preds = %144, %139, %136
  %151 = load i8*, i8** @optarg, align 8
  %152 = icmp eq i8* %151, null
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  store i32 58, i32* %17, align 4
  br label %154

154:                                              ; preds = %153, %150
  br label %155

155:                                              ; preds = %154, %130
  br label %166

156:                                              ; preds = %111
  %157 = load i8**, i8*** %8, align 8
  %158 = load i32, i32* @optind, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = call i8* @strchr(i8* %161, i8 signext 61)
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %165

164:                                              ; preds = %156
  store i32 63, i32* %17, align 4
  br label %165

165:                                              ; preds = %164, %156
  br label %166

166:                                              ; preds = %165, %155
  br label %168

167:                                              ; preds = %74
  store i32 63, i32* %17, align 4
  br label %168

168:                                              ; preds = %167, %166
  %169 = load i32, i32* @optind, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* @optind, align 4
  %171 = load i32, i32* %17, align 4
  store i32 %171, i32* %6, align 4
  br label %172

172:                                              ; preds = %168, %39, %22
  %173 = load i32, i32* %6, align 4
  ret i32 %173
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
