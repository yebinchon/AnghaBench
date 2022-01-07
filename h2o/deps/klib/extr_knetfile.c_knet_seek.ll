; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_knetfile.c_knet_seek.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_knetfile.c_knet_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@KNF_TYPE_LOCAL = common dso_local global i64 0, align 8
@KNF_TYPE_FTP = common dso_local global i64 0, align 8
@SEEK_CUR = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@KNF_TYPE_HTTP = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"[knet_seek] SEEK_END is not supported for HTTP. Offset is unchanged.\0A\00", align 1
@ESPIPE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"[knet_seek] %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @knet_seek(%struct.TYPE_3__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @SEEK_SET, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %131

19:                                               ; preds = %12, %3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @KNF_TYPE_LOCAL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %19
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @lseek(i32 %28, i64 %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 -1, i32* %4, align 4
  br label %131

35:                                               ; preds = %25
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* %6, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %4, align 4
  br label %131

42:                                               ; preds = %19
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @KNF_TYPE_FTP, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %85

48:                                               ; preds = %42
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @SEEK_CUR, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, %53
  store i64 %57, i64* %55, align 8
  br label %80

58:                                               ; preds = %48
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @SEEK_SET, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i64, i64* %6, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %79

66:                                               ; preds = %58
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @SEEK_END, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = add nsw i64 %73, %74
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %70, %66
  br label %79

79:                                               ; preds = %78, %62
  br label %80

80:                                               ; preds = %79, %52
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = load i64, i64* %6, align 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %4, align 4
  br label %131

85:                                               ; preds = %42
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @KNF_TYPE_HTTP, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %123

91:                                               ; preds = %85
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @SEEK_END, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i32, i32* @stderr, align 4
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %96, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %98 = load i32, i32* @ESPIPE, align 4
  store i32 %98, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %131

99:                                               ; preds = %91
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @SEEK_CUR, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load i64, i64* %6, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, %104
  store i64 %108, i64* %106, align 8
  br label %118

109:                                              ; preds = %99
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @SEEK_SET, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load i64, i64* %6, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  br label %117

117:                                              ; preds = %113, %109
  br label %118

118:                                              ; preds = %117, %103
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 3
  store i64 0, i64* %120, align 8
  %121 = load i64, i64* %6, align 8
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %4, align 4
  br label %131

123:                                              ; preds = %85
  br label %124

124:                                              ; preds = %123
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* @EINVAL, align 4
  store i32 %126, i32* @errno, align 4
  %127 = load i32, i32* @stderr, align 4
  %128 = load i32, i32* @errno, align 4
  %129 = call i8* @strerror(i32 %128)
  %130 = call i32 (i32, i8*, ...) @fprintf(i32 %127, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %129)
  store i32 -1, i32* %4, align 4
  br label %131

131:                                              ; preds = %125, %118, %95, %80, %35, %34, %18
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @lseek(i32, i64, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
