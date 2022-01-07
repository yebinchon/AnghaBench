; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_aselib.c_ASE_KeyMAP_DIFFUSE.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_aselib.c_ASE_KeyMAP_DIFFUSE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@gl_filename = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"*BITMAP\00", align 1
@qfalse = common dso_local global i32 0, align 4
@s_token = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@gamedir = common dso_local global i8* null, align 8
@ase = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"material name: '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"(not converted: '%s')\00", align 1
@SYS_WRN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"WARNING: illegal material name '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ASE_KeyMAP_DIFFUSE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ASE_KeyMAP_DIFFUSE(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %7 = load i8*, i8** @gl_filename, align 8
  %8 = call i32 @strcpy(i8* %6, i8* %7)
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %173, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @qfalse, align 4
  %14 = call i32 @ASE_GetToken(i32 %13)
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %16 = load i8*, i8** @s_token, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = call i32 @strcpy(i8* %15, i8* %17)
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %20 = call i64* @strchr(i8* %19, i8 signext 34)
  %21 = icmp ne i64* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %24 = call i64* @strchr(i8* %23, i8 signext 34)
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %22, %12
  br label %26

26:                                               ; preds = %43, %25
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 92
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 %41
  store i8 47, i8* %42, align 1
  br label %43

43:                                               ; preds = %39, %32
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %26

46:                                               ; preds = %26
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %48 = call i32 @strlen(i8* %47)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %64, %46
  %50 = load i32, i32* %5, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 47
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 %61
  store i8 0, i8* %62, align 1
  br label %67

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %5, align 4
  br label %49

67:                                               ; preds = %59, %49
  %68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %69 = load i8, i8* %68, align 16
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 46
  br i1 %71, label %72, label %134

72:                                               ; preds = %67
  %73 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 46
  br i1 %76, label %77, label %134

77:                                               ; preds = %72
  %78 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 2
  %79 = load i8, i8* %78, align 2
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 47
  br i1 %81, label %82, label %134

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %121, %82
  %84 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %85 = load i8, i8* %84, align 16
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 46
  br i1 %87, label %88, label %98

88:                                               ; preds = %83
  %89 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 1
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 46
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 2
  %95 = load i8, i8* %94, align 2
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 47
  br label %98

98:                                               ; preds = %93, %88, %83
  %99 = phi i1 [ false, %88 ], [ false, %83 ], [ %97, %93 ]
  br i1 %99, label %100, label %125

100:                                              ; preds = %98
  %101 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %102 = call i32 @strlen(i8* %101)
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %118, %100
  %104 = load i32, i32* %5, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %103
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 47
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 %115
  store i8 0, i8* %116, align 1
  br label %121

117:                                              ; preds = %106
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %5, align 4
  br label %103

121:                                              ; preds = %113, %103
  %122 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %123 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 3
  %124 = call i32 @strcpy(i8* %122, i8* %123)
  br label %83

125:                                              ; preds = %98
  %126 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %127 = call i32 @strcat(i8* %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %128 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %129 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %130 = call i32 @strcat(i8* %128, i8* %129)
  %131 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %132 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %133 = call i32 @strcpy(i8* %131, i8* %132)
  br label %134

134:                                              ; preds = %125, %77, %72, %67
  %135 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %136 = load i8*, i8** @gamedir, align 8
  %137 = call i8* @strstr(i8* %135, i8* %136)
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %161

139:                                              ; preds = %134
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 1), align 8
  %141 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 0), align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %146 = load i8*, i8** @gamedir, align 8
  %147 = call i8* @strstr(i8* %145, i8* %146)
  %148 = load i8*, i8** @gamedir, align 8
  %149 = call i32 @strlen(i8* %148)
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %147, i64 %150
  %152 = call i32 @strcpy(i8* %144, i8* %151)
  %153 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %154 = load i8*, i8** @gamedir, align 8
  %155 = call i8* @strstr(i8* %153, i8* %154)
  %156 = load i8*, i8** @gamedir, align 8
  %157 = call i32 @strlen(i8* %156)
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %155, i64 %158
  %160 = call i32 @Sys_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %159)
  br label %172

161:                                              ; preds = %134
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 1), align 8
  %163 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 0), align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %168 = call i32 @sprintf(i8* %166, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %167)
  %169 = load i32, i32* @SYS_WRN, align 4
  %170 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %171 = call i32 @Sys_FPrintf(i32 %169, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %170)
  br label %172

172:                                              ; preds = %161, %139
  br label %174

173:                                              ; preds = %1
  br label %174

174:                                              ; preds = %173, %172
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @ASE_GetToken(i32) #1

declare dso_local i64* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @Sys_Printf(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @Sys_FPrintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
