; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_unzip.c_unzOpen.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_unzip.c_unzOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32*, i64, i64, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@UNZ_OK = common dso_local global i32 0, align 4
@unz_GAME_QL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@UNZ_ERRNO = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@UNZ_BADZIPFILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @unzOpen(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %13 = load i32, i32* @UNZ_OK, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32, i32* @unz_GAME_QL, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i8*, i8** %3, align 8
  %18 = call i32* @fopen_ql(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %18, i32** %8, align 8
  br label %22

19:                                               ; preds = %1
  %20 = load i8*, i8** %3, align 8
  %21 = call i32* @fopen(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %21, i32** %8, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32*, i32** %8, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32* null, i32** %2, align 8
  br label %166

26:                                               ; preds = %22
  %27 = load i32*, i32** %8, align 8
  %28 = call i64 @unzlocal_SearchCentralDir(i32* %27)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %31, %26
  %34 = load i32*, i32** %8, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* @SEEK_SET, align 4
  %37 = call i64 @fseek(i32* %34, i64 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %39, %33
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @unzlocal_getLong(i32* %42, i64* %7)
  %44 = load i32, i32* @UNZ_OK, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %46, %41
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @unzlocal_getShort(i32* %49, i64* %9)
  %51 = load i32, i32* @UNZ_OK, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %53, %48
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @unzlocal_getShort(i32* %56, i64* %10)
  %58 = load i32, i32* @UNZ_OK, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %60, %55
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = call i32 @unzlocal_getShort(i32* %63, i64* %65)
  %67 = load i32, i32* @UNZ_OK, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %69, %62
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @unzlocal_getShort(i32* %72, i64* %11)
  %74 = load i32, i32* @UNZ_OK, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %76, %71
  %79 = load i64, i64* %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %79, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load i64, i64* %10, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i64, i64* %9, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87, %84, %78
  %91 = load i32, i32* @UNZ_BADZIPFILE, align 4
  store i32 %91, i32* %12, align 4
  br label %92

92:                                               ; preds = %90, %87
  %93 = load i32*, i32** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %95 = call i32 @unzlocal_getLong(i32* %93, i64* %94)
  %96 = load i32, i32* @UNZ_OK, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %98, %92
  %101 = load i32*, i32** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %103 = call i32 @unzlocal_getLong(i32* %101, i64* %102)
  %104 = load i32, i32* @UNZ_OK, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %107, i32* %12, align 4
  br label %108

108:                                              ; preds = %106, %100
  %109 = load i32*, i32** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 6
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = call i32 @unzlocal_getShort(i32* %109, i64* %111)
  %113 = load i32, i32* @UNZ_OK, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %115, %108
  %118 = load i64, i64* %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %120, %122
  %124 = icmp slt i64 %118, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %117
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* @UNZ_OK, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i32, i32* @UNZ_BADZIPFILE, align 4
  store i32 %130, i32* %12, align 4
  br label %131

131:                                              ; preds = %129, %125, %117
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @UNZ_OK, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %145

135:                                              ; preds = %131
  %136 = load i32, i32* @unz_GAME_QL, align 4
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i32*, i32** %8, align 8
  %140 = call i32 @fclose_ql(i32* %139)
  br label %144

141:                                              ; preds = %135
  %142 = load i32*, i32** %8, align 8
  %143 = call i32 @fclose(i32* %142)
  br label %144

144:                                              ; preds = %141, %138
  store i32* null, i32** %2, align 8
  br label %166

145:                                              ; preds = %131
  %146 = load i32*, i32** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 5
  store i32* %146, i32** %147, align 8
  %148 = load i64, i64* %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %150, %152
  %154 = sub nsw i64 %148, %153
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 4
  store i64 %154, i64* %155, align 8
  %156 = load i64, i64* %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  store i64 %156, i64* %157, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store i32* null, i32** %158, align 8
  %159 = call i64 @safe_malloc(i32 64)
  %160 = inttoptr i64 %159 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %160, %struct.TYPE_4__** %5, align 8
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %162 = bitcast %struct.TYPE_4__* %161 to i8*
  %163 = bitcast %struct.TYPE_4__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %162, i8* align 8 %163, i64 64, i1 false)
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %165 = bitcast %struct.TYPE_4__* %164 to i32*
  store i32* %165, i32** %2, align 8
  br label %166

166:                                              ; preds = %145, %144, %25
  %167 = load i32*, i32** %2, align 8
  ret i32* %167
}

declare dso_local i32* @fopen_ql(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @unzlocal_SearchCentralDir(i32*) #1

declare dso_local i64 @fseek(i32*, i64, i32) #1

declare dso_local i32 @unzlocal_getLong(i32*, i64*) #1

declare dso_local i32 @unzlocal_getShort(i32*, i64*) #1

declare dso_local i32 @fclose_ql(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @safe_malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
