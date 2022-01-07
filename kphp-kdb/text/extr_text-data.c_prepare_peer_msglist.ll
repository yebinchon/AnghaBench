; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_prepare_peer_msglist.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_prepare_peer_msglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32*, i32 }
%struct.TYPE_10__ = type { i64, i32, %struct.file_user_list_entry* }
%struct.file_user_list_entry = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i8* }

@NIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prepare_peer_msglist(i32 %0, i32 %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.file_user_list_entry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @conv_uid(i32 %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %3
  store i32 -1, i32* %4, align 4
  br label %138

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.TYPE_10__* @get_user(i32 %21)
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %9, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %24 = icmp ne %struct.TYPE_10__* %23, null
  br i1 %24, label %25, label %45

25:                                               ; preds = %20
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %27, align 8
  store %struct.file_user_list_entry* %28, %struct.file_user_list_entry** %10, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  %35 = call %struct.TYPE_13__* @load_user_metafile(i32 %34)
  %36 = icmp ne %struct.TYPE_13__* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i32 -2, i32* %4, align 4
  br label %138

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %25
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call %struct.TYPE_11__* @tree_lookup(i32 %42, i32 %43)
  store %struct.TYPE_11__* %44, %struct.TYPE_11__** %9, align 8
  br label %48

45:                                               ; preds = %20
  %46 = load i32, i32* %5, align 4
  %47 = call %struct.file_user_list_entry* @lookup_user_directory(i32 %46)
  store %struct.file_user_list_entry* %47, %struct.file_user_list_entry** %10, align 8
  br label %48

48:                                               ; preds = %45, %39
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %50 = icmp ne %struct.TYPE_11__* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %10, align 8
  %53 = icmp ne %struct.file_user_list_entry* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %138

55:                                               ; preds = %51, %48
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %57 = icmp ne %struct.TYPE_11__* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  br label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @NIL, align 4
  br label %64

64:                                               ; preds = %62, %58
  %65 = phi i32 [ %61, %58 ], [ %63, %62 ]
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %10, align 8
  %69 = icmp ne %struct.file_user_list_entry* %68, null
  br i1 %69, label %70, label %118

70:                                               ; preds = %64
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %72 = icmp ne %struct.TYPE_10__* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %75 = call i8* @get_user_metafile(%struct.TYPE_10__* %74)
  %76 = icmp ne i8* %75, null
  br i1 %76, label %87, label %77

77:                                               ; preds = %73, %70
  %78 = load i32, i32* %5, align 4
  %79 = call %struct.TYPE_13__* @load_user_metafile(i32 %78)
  store %struct.TYPE_13__* %79, %struct.TYPE_13__** %12, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %81 = icmp ne %struct.TYPE_13__* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  store i32 -2, i32* %4, align 4
  br label %138

83:                                               ; preds = %77
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %11, align 8
  br label %90

87:                                               ; preds = %73
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %89 = call i8* @get_user_metafile(%struct.TYPE_10__* %88)
  store i8* %89, i8** %11, align 8
  br label %90

90:                                               ; preds = %87, %83
  %91 = load i8*, i8** %11, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = call i32* @fetch_file_peer_list(i8* %91, i32 %92, i32* %94)
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 2
  store i32* %95, i32** %97, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %90
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %105, i64 %110
  %112 = load i32, i32* %111, align 4
  br label %114

113:                                              ; preds = %90
  br label %114

114:                                              ; preds = %113, %102
  %115 = phi i32 [ %112, %102 ], [ 0, %113 ]
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  br label %125

118:                                              ; preds = %64
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 2
  store i32* null, i32** %120, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  store i32 0, i32* %122, align 4
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  store i32 0, i32* %124, align 8
  br label %125

125:                                              ; preds = %118, %114
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %127 = icmp ne %struct.TYPE_10__* %126, null
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  %133 = xor i1 %132, true
  br label %134

134:                                              ; preds = %128, %125
  %135 = phi i1 [ true, %125 ], [ %133, %128 ]
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert(i32 %136)
  store i32 1, i32* %4, align 4
  br label %138

138:                                              ; preds = %134, %82, %54, %37, %19
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i64 @conv_uid(i32) #1

declare dso_local %struct.TYPE_10__* @get_user(i32) #1

declare dso_local %struct.TYPE_13__* @load_user_metafile(i32) #1

declare dso_local %struct.TYPE_11__* @tree_lookup(i32, i32) #1

declare dso_local %struct.file_user_list_entry* @lookup_user_directory(i32) #1

declare dso_local i8* @get_user_metafile(%struct.TYPE_10__*) #1

declare dso_local i32* @fetch_file_peer_list(i8*, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
