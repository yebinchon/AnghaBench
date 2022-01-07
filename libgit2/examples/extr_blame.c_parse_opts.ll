; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_blame.c_parse_opts.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_blame.c_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opts = type { i32, i32, i32, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Invalid argument set\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-M\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-C\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-F\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-L\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Not enough arguments to -L\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"-L format error\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Only one commit spec allowed\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Please specify a path\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%s..%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.opts*, i32, i8**)* @parse_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_opts(%struct.opts* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x i8*], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [128 x i8], align 16
  store %struct.opts* %0, %struct.opts** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %12 = bitcast [3 x i8*]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 24, i1 false)
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 @usage(i8* null, i32* null)
  br label %17

17:                                               ; preds = %15, %3
  store i32 1, i32* %7, align 4
  br label %18

18:                                               ; preds = %127, %17
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %130

22:                                               ; preds = %18
  %23 = load i8**, i8*** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 45
  br i1 %32, label %33, label %58

33:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %45, %33
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 3
  br label %43

43:                                               ; preds = %40, %34
  %44 = phi i1 [ false, %34 ], [ %42, %40 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %34

48:                                               ; preds = %43
  %49 = load i32, i32* %10, align 4
  %50 = icmp sge i32 %49, 3
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 @usage(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %53

53:                                               ; preds = %51, %48
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 %56
  store i8* %54, i8** %57, align 8
  br label %126

58:                                               ; preds = %22
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  br label %127

63:                                               ; preds = %58
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @strcasecmp(i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load %struct.opts*, %struct.opts** %4, align 8
  %69 = getelementptr inbounds %struct.opts, %struct.opts* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  br label %124

70:                                               ; preds = %63
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 @strcasecmp(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = load %struct.opts*, %struct.opts** %4, align 8
  %76 = getelementptr inbounds %struct.opts, %struct.opts* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  br label %123

77:                                               ; preds = %70
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @strcasecmp(i8* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = load %struct.opts*, %struct.opts** %4, align 8
  %83 = getelementptr inbounds %struct.opts, %struct.opts* %82, i32 0, i32 2
  store i32 1, i32* %83, align 8
  br label %122

84:                                               ; preds = %77
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 @strcasecmp(i8* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %110, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  %91 = load i8**, i8*** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %9, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp sge i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %88
  %100 = call i32 @fatal(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32* null)
  br label %101

101:                                              ; preds = %99, %88
  %102 = load i8*, i8** %9, align 8
  %103 = load %struct.opts*, %struct.opts** %4, align 8
  %104 = getelementptr inbounds %struct.opts, %struct.opts* %103, i32 0, i32 6
  %105 = load %struct.opts*, %struct.opts** %4, align 8
  %106 = getelementptr inbounds %struct.opts, %struct.opts* %105, i32 0, i32 5
  %107 = call i64 @sscanf(i8* %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32* %104, i32* %106)
  %108 = sub nsw i64 %107, 2
  %109 = call i32 @check_lg2(i64 %108, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32* null)
  br label %121

110:                                              ; preds = %84
  %111 = load %struct.opts*, %struct.opts** %4, align 8
  %112 = getelementptr inbounds %struct.opts, %struct.opts* %111, i32 0, i32 3
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = call i32 @fatal(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32* null)
  br label %117

117:                                              ; preds = %115, %110
  %118 = load i8*, i8** %9, align 8
  %119 = load %struct.opts*, %struct.opts** %4, align 8
  %120 = getelementptr inbounds %struct.opts, %struct.opts* %119, i32 0, i32 3
  store i8* %118, i8** %120, align 8
  br label %121

121:                                              ; preds = %117, %101
  br label %122

122:                                              ; preds = %121, %81
  br label %123

123:                                              ; preds = %122, %74
  br label %124

124:                                              ; preds = %123, %67
  br label %125

125:                                              ; preds = %124
  br label %126

126:                                              ; preds = %125, %53
  br label %127

127:                                              ; preds = %126, %62
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %7, align 4
  br label %18

130:                                              ; preds = %18
  %131 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  %132 = load i8*, i8** %131, align 16
  %133 = icmp ne i8* %132, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %130
  %135 = call i32 @usage(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32* null)
  br label %136

136:                                              ; preds = %134, %130
  %137 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  %138 = load i8*, i8** %137, align 16
  %139 = load %struct.opts*, %struct.opts** %4, align 8
  %140 = getelementptr inbounds %struct.opts, %struct.opts* %139, i32 0, i32 4
  store i8* %138, i8** %140, align 8
  %141 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 1
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %153

144:                                              ; preds = %136
  %145 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 1
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.opts*, %struct.opts** %4, align 8
  %148 = getelementptr inbounds %struct.opts, %struct.opts* %147, i32 0, i32 4
  store i8* %146, i8** %148, align 8
  %149 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  %150 = load i8*, i8** %149, align 16
  %151 = load %struct.opts*, %struct.opts** %4, align 8
  %152 = getelementptr inbounds %struct.opts, %struct.opts* %151, i32 0, i32 3
  store i8* %150, i8** %152, align 8
  br label %153

153:                                              ; preds = %144, %136
  %154 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 2
  %155 = load i8*, i8** %154, align 16
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %172

157:                                              ; preds = %153
  %158 = bitcast [128 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %158, i8 0, i64 128, i1 false)
  %159 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 2
  %160 = load i8*, i8** %159, align 16
  %161 = load %struct.opts*, %struct.opts** %4, align 8
  %162 = getelementptr inbounds %struct.opts, %struct.opts* %161, i32 0, i32 4
  store i8* %160, i8** %162, align 8
  %163 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %164 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  %165 = load i8*, i8** %164, align 16
  %166 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 1
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @sprintf(i8* %163, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %165, i8* %167)
  %169 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %170 = load %struct.opts*, %struct.opts** %4, align 8
  %171 = getelementptr inbounds %struct.opts, %struct.opts* %170, i32 0, i32 3
  store i8* %169, i8** %171, align 8
  br label %172

172:                                              ; preds = %157, %153
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @usage(i8*, i32*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @strcasecmp(i8*, i8*) #2

declare dso_local i32 @fatal(i8*, i32*) #2

declare dso_local i32 @check_lg2(i64, i8*, i32*) #2

declare dso_local i64 @sscanf(i8*, i8*, i32*, i32*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
