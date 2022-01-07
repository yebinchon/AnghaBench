; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_exec.c_sys_execve.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_exec.c_sys_execve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32, %struct.TYPE_8__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i64, %struct.sigaction_* }
%struct.sigaction_ = type { i64 }
%struct.fd = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.fd*, %struct.statbuf*)* }
%struct.statbuf = type { i32, i32, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@_EACCES = common dso_local global i32 0, align 4
@_ENOEXEC = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_9__* null, align 8
@S_ISGID = common dso_local global i32 0, align 4
@NUM_SIGS = common dso_local global i32 0, align 4
@SIG_IGN_ = common dso_local global i64 0, align 8
@SIG_DFL_ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_execve(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fd*, align 8
  %9 = alloca %struct.statbuf, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [16 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca %struct.sigaction_*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @O_RDONLY, align 4
  %17 = call %struct.fd* @generic_open(i8* %15, i32 %16, i32 0)
  store %struct.fd* %17, %struct.fd** %8, align 8
  %18 = load %struct.fd*, %struct.fd** %8, align 8
  %19 = call i64 @IS_ERR(%struct.fd* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.fd*, %struct.fd** %8, align 8
  %23 = call i32 @PTR_ERR(%struct.fd* %22)
  store i32 %23, i32* %4, align 4
  br label %185

24:                                               ; preds = %3
  %25 = load %struct.fd*, %struct.fd** %8, align 8
  %26 = getelementptr inbounds %struct.fd, %struct.fd* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32 (%struct.fd*, %struct.statbuf*)*, i32 (%struct.fd*, %struct.statbuf*)** %30, align 8
  %32 = load %struct.fd*, %struct.fd** %8, align 8
  %33 = call i32 %31(%struct.fd* %32, %struct.statbuf* %9)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %24
  %37 = load %struct.fd*, %struct.fd** %8, align 8
  %38 = call i32 @fd_close(%struct.fd* %37)
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %185

40:                                               ; preds = %24
  %41 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %9, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 73
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load %struct.fd*, %struct.fd** %8, align 8
  %47 = call i32 @fd_close(%struct.fd* %46)
  %48 = load i32, i32* @_EACCES, align 4
  store i32 %48, i32* %4, align 4
  br label %185

49:                                               ; preds = %40
  %50 = load %struct.fd*, %struct.fd** %8, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @format_exec(%struct.fd* %50, i8* %51, i8* %52, i8* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @_ENOEXEC, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %49
  %59 = load %struct.fd*, %struct.fd** %8, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @shebang_exec(%struct.fd* %59, i8* %60, i8* %61, i8* %62)
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %58, %49
  %65 = load %struct.fd*, %struct.fd** %8, align 8
  %66 = call i32 @fd_close(%struct.fd* %65)
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %4, align 4
  br label %185

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %9, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @S_ISUID, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 8
  store i32 %80, i32* %82, align 4
  %83 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %9, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 7
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %77, %71
  %88 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %9, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @S_ISGID, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %87
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 6
  store i32 %96, i32* %98, align 4
  %99 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %9, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %93, %87
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 4
  %106 = call i32 @lock(i32* %105)
  %107 = load i8*, i8** %5, align 8
  %108 = call i8* @strrchr(i8* %107, i8 signext 47)
  store i8* %108, i8** %11, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load i8*, i8** %5, align 8
  store i8* %112, i8** %11, align 8
  br label %116

113:                                              ; preds = %103
  %114 = load i8*, i8** %11, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %11, align 8
  br label %116

116:                                              ; preds = %113, %111
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load i8*, i8** %11, align 8
  %121 = call i32 @strncpy(i8* %119, i8* %120, i32 8)
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 4
  %124 = call i32 @unlock(i32* %123)
  %125 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @strncpy(i8* %125, i8* %128, i32 15)
  %130 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 15
  store i8 0, i8* %130, align 1
  %131 = call i32 (...) @pthread_self()
  %132 = sext i32 %131 to i64
  %133 = inttoptr i64 %132 to i8*
  %134 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %135 = call i32 (i8*, ...) @pthread_setname_np(i8* %133, i8* %134)
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @fdtable_do_cloexec(i32 %138)
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = call i32 @lock(i32* %143)
  store i32 0, i32* %13, align 4
  br label %145

145:                                              ; preds = %168, %116
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* @NUM_SIGS, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %171

149:                                              ; preds = %145
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 2
  %154 = load %struct.sigaction_*, %struct.sigaction_** %153, align 8
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.sigaction_, %struct.sigaction_* %154, i64 %156
  store %struct.sigaction_* %157, %struct.sigaction_** %14, align 8
  %158 = load %struct.sigaction_*, %struct.sigaction_** %14, align 8
  %159 = getelementptr inbounds %struct.sigaction_, %struct.sigaction_* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @SIG_IGN_, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %149
  %164 = load i64, i64* @SIG_DFL_, align 8
  %165 = load %struct.sigaction_*, %struct.sigaction_** %14, align 8
  %166 = getelementptr inbounds %struct.sigaction_, %struct.sigaction_* %165, i32 0, i32 0
  store i64 %164, i64* %166, align 8
  br label %167

167:                                              ; preds = %163, %149
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %13, align 4
  br label %145

171:                                              ; preds = %145
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  store i64 0, i64* %175, align 8
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = call i32 @unlock(i32* %179)
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  store i32 1, i32* %182, align 8
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %184 = call i32 @vfork_notify(%struct.TYPE_9__* %183)
  store i32 0, i32* %4, align 4
  br label %185

185:                                              ; preds = %171, %69, %45, %36, %21
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local %struct.fd* @generic_open(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.fd*) #1

declare dso_local i32 @PTR_ERR(%struct.fd*) #1

declare dso_local i32 @fd_close(%struct.fd*) #1

declare dso_local i32 @format_exec(%struct.fd*, i8*, i8*, i8*) #1

declare dso_local i32 @shebang_exec(%struct.fd*, i8*, i8*, i8*) #1

declare dso_local i32 @lock(i32*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @unlock(i32*) #1

declare dso_local i32 @pthread_setname_np(i8*, ...) #1

declare dso_local i32 @pthread_self(...) #1

declare dso_local i32 @fdtable_do_cloexec(i32) #1

declare dso_local i32 @vfork_notify(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
