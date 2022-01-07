; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_module_64.c_module_frob_arch_sections.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_module_64.c_module_frob_arch_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i64, i64 }
%struct.module = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c".stubs\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".toc\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"__versions\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c".init\00", align 1
@SHT_SYMTAB = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"%s: doesn't contain .stubs.\0A\00", align 1
@ENOEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @module_frob_arch_sections(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i8* %2, %struct.module* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.module*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.module* %3, %struct.module** %9, align 8
  store i32 1, i32* %10, align 4
  br label %12

12:                                               ; preds = %159, %4
  %13 = load i32, i32* %10, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %162

18:                                               ; preds = %12
  %19 = load i8*, i8** %8, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = load i32, i32* %10, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %19, i64 %26
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %18
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.module*, %struct.module** %9, align 8
  %33 = getelementptr inbounds %struct.module, %struct.module* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  br label %98

35:                                               ; preds = %18
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %38 = load i32, i32* %10, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %36, i64 %43
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %35
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.module*, %struct.module** %9, align 8
  %50 = getelementptr inbounds %struct.module, %struct.module* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 8
  br i1 %58, label %59, label %65

59:                                               ; preds = %47
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %61 = load i32, i32* %10, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  store i32 8, i32* %64, align 4
  br label %65

65:                                               ; preds = %59, %47
  br label %97

66:                                               ; preds = %35
  %67 = load i8*, i8** %8, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %69 = load i32, i32* %10, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %67, i64 %74
  %76 = call i64 @strcmp(i8* %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %66
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = bitcast %struct.TYPE_10__* %79 to i8*
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %82 = load i32, i32* %10, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr i8, i8* %80, i64 %87
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %90 = load i32, i32* %10, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dedotify_versions(i8* %88, i32 %94)
  br label %96

96:                                               ; preds = %78, %66
  br label %97

97:                                               ; preds = %96, %65
  br label %98

98:                                               ; preds = %97, %30
  br label %99

99:                                               ; preds = %111, %98
  %100 = load i8*, i8** %8, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %102 = load i32, i32* %10, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %100, i64 %107
  %109 = call i8* @strstr(i8* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i8* %109, i8** %11, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %99
  %112 = load i8*, i8** %11, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  store i8 95, i8* %113, align 1
  br label %99

114:                                              ; preds = %99
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %116 = load i32, i32* %10, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @SHT_SYMTAB, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %158

123:                                              ; preds = %114
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %125 = bitcast %struct.TYPE_10__* %124 to i8*
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %127 = load i32, i32* %10, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = getelementptr i8, i8* %125, i64 %132
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %135 = load i32, i32* %10, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = udiv i64 %140, 4
  %142 = trunc i64 %141 to i32
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %144 = bitcast %struct.TYPE_10__* %143 to i8*
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %147 = load i32, i32* %10, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = getelementptr i8, i8* %144, i64 %155
  %157 = call i32 @dedotify(i8* %133, i32 %142, i8* %156)
  br label %158

158:                                              ; preds = %123, %114
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %10, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %10, align 4
  br label %12

162:                                              ; preds = %12
  %163 = load %struct.module*, %struct.module** %9, align 8
  %164 = getelementptr inbounds %struct.module, %struct.module* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %175, label %168

168:                                              ; preds = %162
  %169 = load %struct.module*, %struct.module** %9, align 8
  %170 = getelementptr inbounds %struct.module, %struct.module* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* @ENOEXEC, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %5, align 4
  br label %201

175:                                              ; preds = %162
  %176 = load %struct.module*, %struct.module** %9, align 8
  %177 = getelementptr inbounds %struct.module, %struct.module* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %189, label %181

181:                                              ; preds = %175
  %182 = load %struct.module*, %struct.module** %9, align 8
  %183 = getelementptr inbounds %struct.module, %struct.module* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.module*, %struct.module** %9, align 8
  %187 = getelementptr inbounds %struct.module, %struct.module* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 1
  store i32 %185, i32* %188, align 4
  br label %189

189:                                              ; preds = %181, %175
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %192 = call i32 @get_stubs_size(%struct.TYPE_10__* %190, %struct.TYPE_9__* %191)
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %194 = load %struct.module*, %struct.module** %9, align 8
  %195 = getelementptr inbounds %struct.module, %struct.module* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 3
  store i32 %192, i32* %200, align 4
  store i32 0, i32* %5, align 4
  br label %201

201:                                              ; preds = %189, %168
  %202 = load i32, i32* %5, align 4
  ret i32 %202
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @dedotify_versions(i8*, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @dedotify(i8*, i32, i8*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @get_stubs_size(%struct.TYPE_10__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
