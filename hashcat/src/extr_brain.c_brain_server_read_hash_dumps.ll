; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_brain.c_brain_server_read_hash_dumps.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_brain.c_brain_server_read_hash_dumps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }
%struct.dirent = type { i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brain_server_read_hash_dumps(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dirent*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @chdir(i8* %14)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load i32, i32* @stderr, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @strerror(i32 %20)
  %22 = call i32 @brain_logging(i32 %18, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %21)
  store i32 0, i32* %3, align 4
  br label %154

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  %25 = call i32* @opendir(i8* %24)
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* @stderr, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @errno, align 4
  %32 = call i32 @strerror(i32 %31)
  %33 = call i32 @brain_logging(i32 %29, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %32)
  store i32 0, i32* %3, align 4
  br label %154

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %146, %145, %124, %117, %110, %103, %96, %89, %82, %75, %68, %61, %54, %47, %34
  %36 = load i32*, i32** %6, align 8
  %37 = call %struct.dirent* @readdir(i32* %36)
  store %struct.dirent* %37, %struct.dirent** %7, align 8
  %38 = icmp ne %struct.dirent* %37, null
  br i1 %38, label %39, label %151

39:                                               ; preds = %35
  %40 = load %struct.dirent*, %struct.dirent** %7, align 8
  %41 = getelementptr inbounds %struct.dirent, %struct.dirent* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i64 @strlen(i8* %43)
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %45, 19
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %35

48:                                               ; preds = %39
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 98
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %35

55:                                               ; preds = %48
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 114
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %35

62:                                               ; preds = %55
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 97
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %35

69:                                               ; preds = %62
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 3
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 105
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %35

76:                                               ; preds = %69
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 4
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 110
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %35

83:                                               ; preds = %76
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 5
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 46
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %35

90:                                               ; preds = %83
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 14
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 46
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %35

97:                                               ; preds = %90
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 15
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 108
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %35

104:                                              ; preds = %97
  %105 = load i8*, i8** %8, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 16
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 100
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %35

111:                                              ; preds = %104
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 17
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 109
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %35

118:                                              ; preds = %111
  %119 = load i8*, i8** %8, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 18
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %122, 112
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %35

125:                                              ; preds = %118
  %126 = load i8*, i8** %8, align 8
  %127 = bitcast i8* %126 to i32*
  %128 = getelementptr inbounds i32, i32* %127, i64 6
  %129 = call i32 @hex_to_u32(i32* %128)
  %130 = call i32 @byte_swap_32(i32 %129)
  store i32 %130, i32* %10, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  store i32* %137, i32** %11, align 8
  %138 = load i32*, i32** %11, align 8
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @brain_server_db_hash_init(i32* %138, i32 %139)
  %141 = load i32*, i32** %11, align 8
  %142 = load i8*, i8** %8, align 8
  %143 = call i32 @brain_server_read_hash_dump(i32* %141, i8* %142)
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %125
  br label %35

146:                                              ; preds = %125
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %148, align 8
  br label %35

151:                                              ; preds = %35
  %152 = load i32*, i32** %6, align 8
  %153 = call i32 @closedir(i32* %152)
  store i32 1, i32* %3, align 4
  br label %154

154:                                              ; preds = %151, %28, %17
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @chdir(i8*) #1

declare dso_local i32 @brain_logging(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @byte_swap_32(i32) #1

declare dso_local i32 @hex_to_u32(i32*) #1

declare dso_local i32 @brain_server_db_hash_init(i32*, i32) #1

declare dso_local i32 @brain_server_read_hash_dump(i32*, i8*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
