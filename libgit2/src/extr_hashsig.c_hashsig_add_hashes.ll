; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_hashsig.c_hashsig_add_hashes.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_hashsig.c_hashsig_add_hashes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@HASHSIG_HASH_START = common dso_local global i64 0, align 8
@HASHSIG_MAX_RUN = common dso_local global i32 0, align 4
@GIT_HASHSIG_IGNORE_WHITESPACE = common dso_local global i32 0, align 4
@GIT_HASHSIG_SMART_WHITESPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i64, %struct.TYPE_5__*)* @hashsig_add_hashes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hashsig_add_hashes(%struct.TYPE_6__* %0, i8* %1, i64 %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %8, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %10, align 8
  %19 = load i64, i64* @HASHSIG_HASH_START, align 8
  store i64 %19, i64* %11, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  br label %23

23:                                               ; preds = %164, %4
  %24 = load i8*, i8** %9, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = icmp ult i8* %24, %25
  br i1 %26, label %27, label %165

27:                                               ; preds = %23
  %28 = load i64, i64* @HASHSIG_HASH_START, align 8
  store i64 %28, i64* %11, align 8
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %122, %27
  %30 = load i8*, i8** %9, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ult i8* %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @HASHSIG_MAX_RUN, align 4
  %36 = icmp slt i32 %34, %35
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i1 [ false, %29 ], [ %36, %33 ]
  br i1 %38, label %39, label %128

39:                                               ; preds = %37
  %40 = load i8*, i8** %9, align 8
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %14, align 1
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %58, %44
  %46 = load i8*, i8** %9, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = icmp ult i8* %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i8, i8* %14, align 1
  %51 = call i64 @git__isspace_nonlf(i8 signext %50)
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i1 [ false, %45 ], [ %52, %49 ]
  br i1 %54, label %55, label %61

55:                                               ; preds = %53
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %9, align 8
  br label %58

58:                                               ; preds = %55
  %59 = load i8*, i8** %9, align 8
  %60 = load i8, i8* %59, align 1
  store i8 %60, i8* %14, align 1
  br label %45

61:                                               ; preds = %53
  br label %90

62:                                               ; preds = %39
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @GIT_HASHSIG_IGNORE_WHITESPACE, align 4
  %67 = load i32, i32* @GIT_HASHSIG_SMART_WHITESPACE, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %65, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %85, %71
  %73 = load i8*, i8** %9, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = icmp ult i8* %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i8, i8* %14, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 13
  br label %80

80:                                               ; preds = %76, %72
  %81 = phi i1 [ false, %72 ], [ %79, %76 ]
  br i1 %81, label %82, label %88

82:                                               ; preds = %80
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %9, align 8
  br label %85

85:                                               ; preds = %82
  %86 = load i8*, i8** %9, align 8
  %87 = load i8, i8* %86, align 1
  store i8 %87, i8* %14, align 1
  br label %72

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88, %62
  br label %90

90:                                               ; preds = %89, %61
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @GIT_HASHSIG_SMART_WHITESPACE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = load i8, i8* %14, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 10
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %97, %90
  %103 = load i8*, i8** %9, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = icmp uge i8* %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %128

107:                                              ; preds = %102
  %108 = load i8*, i8** %9, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %9, align 8
  %110 = load i8, i8* %14, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 10
  br i1 %112, label %117, label %113

113:                                              ; preds = %107
  %114 = load i8, i8* %14, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %113, %107
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  br label %128

122:                                              ; preds = %113
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %13, align 4
  %125 = load i64, i64* %11, align 8
  %126 = load i8, i8* %14, align 1
  %127 = call i32 @HASHSIG_HASH_MIX(i64 %125, i8 signext %126)
  br label %29

128:                                              ; preds = %117, %106, %37
  %129 = load i32, i32* %13, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %164

131:                                              ; preds = %128
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  %134 = load i64, i64* %11, align 8
  %135 = trunc i64 %134 to i32
  %136 = call i32 @hashsig_heap_insert(i32* %133, i32 %135)
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load i64, i64* %11, align 8
  %140 = trunc i64 %139 to i32
  %141 = call i32 @hashsig_heap_insert(i32* %138, i32 %140)
  br label %142

142:                                              ; preds = %160, %131
  %143 = load i8*, i8** %9, align 8
  %144 = load i8*, i8** %10, align 8
  %145 = icmp ult i8* %143, %144
  br i1 %145, label %146, label %158

146:                                              ; preds = %142
  %147 = load i8*, i8** %9, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 10
  br i1 %150, label %156, label %151

151:                                              ; preds = %146
  %152 = load i8*, i8** %9, align 8
  %153 = load i8, i8* %152, align 1
  %154 = icmp ne i8 %153, 0
  %155 = xor i1 %154, true
  br label %156

156:                                              ; preds = %151, %146
  %157 = phi i1 [ true, %146 ], [ %155, %151 ]
  br label %158

158:                                              ; preds = %156, %142
  %159 = phi i1 [ false, %142 ], [ %157, %156 ]
  br i1 %159, label %160, label %163

160:                                              ; preds = %158
  %161 = load i8*, i8** %9, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %9, align 8
  br label %142

163:                                              ; preds = %158
  br label %164

164:                                              ; preds = %163, %128
  br label %23

165:                                              ; preds = %23
  %166 = load i32, i32* %12, align 4
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 4
  ret i32 0
}

declare dso_local i64 @git__isspace_nonlf(i8 signext) #1

declare dso_local i32 @HASHSIG_HASH_MIX(i64, i8 signext) #1

declare dso_local i32 @hashsig_heap_insert(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
