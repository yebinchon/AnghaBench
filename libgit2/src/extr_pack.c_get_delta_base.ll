; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack.c_get_delta_base.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack.c_get_delta_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_pack_file = type { i32, i64 }
%struct.git_pack_entry = type { i32 }

@GIT_EBUFS = common dso_local global i32 0, align 4
@GIT_OBJECT_OFS_DELTA = common dso_local global i64 0, align 8
@GIT_OBJECT_REF_DELTA = common dso_local global i64 0, align 8
@GIT_PASSTHROUGH = common dso_local global i32 0, align 4
@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"base entry delta is not in the same pack\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_delta_base(%struct.git_pack_file* %0, i32** %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.git_pack_file*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i64, align 8
  %19 = alloca %struct.git_pack_entry*, align 8
  %20 = alloca i32, align 4
  store %struct.git_pack_file* %0, %struct.git_pack_file** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %22 = load i32**, i32*** %8, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @pack_window_open(%struct.git_pack_file* %21, i32** %22, i32 %24, i32* %12)
  store i8* %25, i8** %13, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* @GIT_EBUFS, align 4
  store i32 %29, i32* %6, align 4
  br label %142

30:                                               ; preds = %5
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @GIT_OBJECT_OFS_DELTA, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %99

34:                                               ; preds = %30
  store i32 0, i32* %16, align 4
  %35 = load i8*, i8** %13, align 8
  %36 = load i32, i32* %16, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %16, align 4
  %38 = zext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %17, align 1
  %41 = load i8, i8* %17, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 127
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %18, align 8
  br label %45

45:                                               ; preds = %66, %34
  %46 = load i8, i8* %17, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, 128
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %80

50:                                               ; preds = %45
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp ule i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @GIT_EBUFS, align 4
  store i32 %55, i32* %6, align 4
  br label %142

56:                                               ; preds = %50
  %57 = load i64, i64* %18, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %18, align 8
  %59 = load i64, i64* %18, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i64, i64* %18, align 8
  %63 = call i64 @MSB(i64 %62, i32 7)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %56
  store i32 0, i32* %6, align 4
  br label %142

66:                                               ; preds = %61
  %67 = load i8*, i8** %13, align 8
  %68 = load i32, i32* %16, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %16, align 4
  %70 = zext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = load i8, i8* %71, align 1
  store i8 %72, i8* %17, align 1
  %73 = load i64, i64* %18, align 8
  %74 = shl i64 %73, 7
  %75 = load i8, i8* %17, align 1
  %76 = zext i8 %75 to i32
  %77 = and i32 %76, 127
  %78 = sext i32 %77 to i64
  %79 = add i64 %74, %78
  store i64 %79, i64* %18, align 8
  br label %45

80:                                               ; preds = %45
  %81 = load i64, i64* %18, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %11, align 4
  %85 = zext i32 %84 to i64
  %86 = load i64, i64* %18, align 8
  %87 = icmp ule i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %83, %80
  store i32 0, i32* %6, align 4
  br label %142

89:                                               ; preds = %83
  %90 = load i32, i32* %11, align 4
  %91 = zext i32 %90 to i64
  %92 = load i64, i64* %18, align 8
  %93 = sub i64 %91, %92
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* %96, align 4
  %98 = add i32 %97, %95
  store i32 %98, i32* %96, align 4
  br label %140

99:                                               ; preds = %30
  %100 = load i64, i64* %10, align 8
  %101 = load i64, i64* @GIT_OBJECT_REF_DELTA, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %138

103:                                              ; preds = %99
  %104 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %105 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %125

108:                                              ; preds = %103
  %109 = load i8*, i8** %13, align 8
  %110 = call i32 @git_oid_fromraw(i32* %20, i8* %109)
  %111 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %112 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call %struct.git_pack_entry* @git_oidmap_get(i32 %113, i32* %20)
  store %struct.git_pack_entry* %114, %struct.git_pack_entry** %19, align 8
  %115 = icmp ne %struct.git_pack_entry* %114, null
  br i1 %115, label %116, label %123

116:                                              ; preds = %108
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* %117, align 4
  %119 = add i32 %118, 20
  store i32 %119, i32* %117, align 4
  %120 = load %struct.git_pack_entry*, %struct.git_pack_entry** %19, align 8
  %121 = getelementptr inbounds %struct.git_pack_entry, %struct.git_pack_entry* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %6, align 4
  br label %142

123:                                              ; preds = %108
  %124 = load i32, i32* @GIT_PASSTHROUGH, align 4
  store i32 %124, i32* %6, align 4
  br label %142

125:                                              ; preds = %103
  %126 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %127 = load i8*, i8** %13, align 8
  %128 = bitcast i8* %127 to i32*
  %129 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %130 = call i64 @pack_entry_find_offset(i32* %14, i32* %15, %struct.git_pack_file* %126, i32* %128, i32 %129)
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = call i32 @packfile_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 %133, i32* %6, align 4
  br label %142

134:                                              ; preds = %125
  %135 = load i32*, i32** %9, align 8
  %136 = load i32, i32* %135, align 4
  %137 = add i32 %136, 20
  store i32 %137, i32* %135, align 4
  br label %139

138:                                              ; preds = %99
  store i32 0, i32* %6, align 4
  br label %142

139:                                              ; preds = %134
  br label %140

140:                                              ; preds = %139, %89
  %141 = load i32, i32* %14, align 4
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %140, %138, %132, %123, %116, %88, %65, %54, %28
  %143 = load i32, i32* %6, align 4
  ret i32 %143
}

declare dso_local i8* @pack_window_open(%struct.git_pack_file*, i32**, i32, i32*) #1

declare dso_local i64 @MSB(i64, i32) #1

declare dso_local i32 @git_oid_fromraw(i32*, i8*) #1

declare dso_local %struct.git_pack_entry* @git_oidmap_get(i32, i32*) #1

declare dso_local i64 @pack_entry_find_offset(i32*, i32*, %struct.git_pack_file*, i32*, i32) #1

declare dso_local i32 @packfile_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
