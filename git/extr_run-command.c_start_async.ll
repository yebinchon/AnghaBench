; ModuleID = '/home/carl/AnghaBench/git/extr_run-command.c_start_async.c'
source_filename = "/home/carl/AnghaBench/git/extr_run-command.c_start_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async = type { i32, i32, i64, i32, i32, i32, i32, i32 (i32, i32, i32)* }

@.str = private unnamed_addr constant [19 x i8] c"cannot create pipe\00", align 1
@main_thread_set = common dso_local global i32 0, align 4
@main_thread = common dso_local global i32 0, align 4
@async_key = common dso_local global i32 0, align 4
@async_die_counter = common dso_local global i32 0, align 4
@die_async = common dso_local global i32 0, align 4
@async_die_is_recursing = common dso_local global i32 0, align 4
@run_thread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"cannot create async thread: %s\00", align 1
@process_is_async = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @start_async(%struct.async* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.async*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.async* %0, %struct.async** %3, align 8
  %11 = load %struct.async*, %struct.async** %3, align 8
  %12 = getelementptr inbounds %struct.async, %struct.async* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %13, 0
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %1
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %20 = call i64 @pipe(i32* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load %struct.async*, %struct.async** %3, align 8
  %24 = getelementptr inbounds %struct.async, %struct.async* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.async*, %struct.async** %3, align 8
  %29 = getelementptr inbounds %struct.async, %struct.async* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @close(i32 %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = call i32 @error_errno(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %33, i32* %2, align 4
  br label %187

34:                                               ; preds = %18
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.async*, %struct.async** %3, align 8
  %38 = getelementptr inbounds %struct.async, %struct.async* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %34, %1
  %40 = load %struct.async*, %struct.async** %3, align 8
  %41 = getelementptr inbounds %struct.async, %struct.async* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 0
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %75

47:                                               ; preds = %39
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %49 = call i64 @pipe(i32* %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %47
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %56 = call i32 @close_pair(i32* %55)
  br label %68

57:                                               ; preds = %51
  %58 = load %struct.async*, %struct.async** %3, align 8
  %59 = getelementptr inbounds %struct.async, %struct.async* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.async*, %struct.async** %3, align 8
  %64 = getelementptr inbounds %struct.async, %struct.async* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @close(i32 %65)
  br label %67

67:                                               ; preds = %62, %57
  br label %68

68:                                               ; preds = %67, %54
  %69 = call i32 @error_errno(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %69, i32* %2, align 4
  br label %187

70:                                               ; preds = %47
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.async*, %struct.async** %3, align 8
  %74 = getelementptr inbounds %struct.async, %struct.async* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %70, %39
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %8, align 4
  br label %92

81:                                               ; preds = %75
  %82 = load %struct.async*, %struct.async** %3, align 8
  %83 = getelementptr inbounds %struct.async, %struct.async* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load %struct.async*, %struct.async** %3, align 8
  %88 = getelementptr inbounds %struct.async, %struct.async* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %8, align 4
  br label %91

90:                                               ; preds = %81
  store i32 -1, i32* %8, align 4
  br label %91

91:                                               ; preds = %90, %86
  br label %92

92:                                               ; preds = %91, %78
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %9, align 4
  br label %109

98:                                               ; preds = %92
  %99 = load %struct.async*, %struct.async** %3, align 8
  %100 = getelementptr inbounds %struct.async, %struct.async* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load %struct.async*, %struct.async** %3, align 8
  %105 = getelementptr inbounds %struct.async, %struct.async* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %9, align 4
  br label %108

107:                                              ; preds = %98
  store i32 -1, i32* %9, align 4
  br label %108

108:                                              ; preds = %107, %103
  br label %109

109:                                              ; preds = %108, %95
  %110 = load i32, i32* @main_thread_set, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %109
  store i32 1, i32* @main_thread_set, align 4
  %113 = call i32 (...) @pthread_self()
  store i32 %113, i32* @main_thread, align 4
  %114 = call i32 @pthread_key_create(i32* @async_key, i32* null)
  %115 = call i32 @pthread_key_create(i32* @async_die_counter, i32* null)
  %116 = load i32, i32* @die_async, align 4
  %117 = call i32 @set_die_routine(i32 %116)
  %118 = load i32, i32* @async_die_is_recursing, align 4
  %119 = call i32 @set_die_is_recursing_routine(i32 %118)
  br label %120

120:                                              ; preds = %112, %109
  %121 = load i32, i32* %8, align 4
  %122 = icmp sge i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @set_cloexec(i32 %124)
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i32, i32* %9, align 4
  %128 = icmp sge i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @set_cloexec(i32 %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load i32, i32* %8, align 4
  %134 = load %struct.async*, %struct.async** %3, align 8
  %135 = getelementptr inbounds %struct.async, %struct.async* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.async*, %struct.async** %3, align 8
  %138 = getelementptr inbounds %struct.async, %struct.async* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 4
  %139 = load %struct.async*, %struct.async** %3, align 8
  %140 = getelementptr inbounds %struct.async, %struct.async* %139, i32 0, i32 5
  %141 = load i32, i32* @run_thread, align 4
  %142 = load %struct.async*, %struct.async** %3, align 8
  %143 = call i32 @pthread_create(i32* %140, i32* null, i32 %141, %struct.async* %142)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %132
  %147 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @strerror(i32 %148)
  %150 = call i32 @error(i32 %147, i32 %149)
  br label %152

151:                                              ; preds = %132
  store i32 0, i32* %2, align 4
  br label %187

152:                                              ; preds = %146
  %153 = load i32, i32* %4, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %157 = call i32 @close_pair(i32* %156)
  br label %169

158:                                              ; preds = %152
  %159 = load %struct.async*, %struct.async** %3, align 8
  %160 = getelementptr inbounds %struct.async, %struct.async* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %158
  %164 = load %struct.async*, %struct.async** %3, align 8
  %165 = getelementptr inbounds %struct.async, %struct.async* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @close(i32 %166)
  br label %168

168:                                              ; preds = %163, %158
  br label %169

169:                                              ; preds = %168, %155
  %170 = load i32, i32* %5, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %174 = call i32 @close_pair(i32* %173)
  br label %186

175:                                              ; preds = %169
  %176 = load %struct.async*, %struct.async** %3, align 8
  %177 = getelementptr inbounds %struct.async, %struct.async* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = load %struct.async*, %struct.async** %3, align 8
  %182 = getelementptr inbounds %struct.async, %struct.async* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @close(i32 %183)
  br label %185

185:                                              ; preds = %180, %175
  br label %186

186:                                              ; preds = %185, %172
  store i32 -1, i32* %2, align 4
  br label %187

187:                                              ; preds = %186, %151, %68, %32
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @error_errno(i8*) #1

declare dso_local i32 @close_pair(i32*) #1

declare dso_local i32 @pthread_self(...) #1

declare dso_local i32 @pthread_key_create(i32*, i32*) #1

declare dso_local i32 @set_die_routine(i32) #1

declare dso_local i32 @set_die_is_recursing_routine(i32) #1

declare dso_local i32 @set_cloexec(i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.async*) #1

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
