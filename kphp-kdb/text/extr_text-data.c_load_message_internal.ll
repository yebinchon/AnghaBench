; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_load_message_internal.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_load_message_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imessage = type { i32, %struct.TYPE_19__*, i64, %struct.TYPE_14__*, %struct.TYPE_13__*, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.file_user_list_entry = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i64, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_18__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_message_internal(%struct.imessage* %0, %struct.TYPE_16__* %1, %struct.file_user_list_entry* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.imessage*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.file_user_list_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  store %struct.imessage* %0, %struct.imessage** %8, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %9, align 8
  store %struct.file_user_list_entry* %2, %struct.file_user_list_entry** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %14, align 8
  %18 = load %struct.imessage*, %struct.imessage** %8, align 8
  %19 = getelementptr inbounds %struct.imessage, %struct.imessage* %18, i32 0, i32 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %19, align 8
  %20 = load %struct.imessage*, %struct.imessage** %8, align 8
  %21 = getelementptr inbounds %struct.imessage, %struct.imessage* %20, i32 0, i32 1
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %21, align 8
  %22 = load %struct.imessage*, %struct.imessage** %8, align 8
  %23 = getelementptr inbounds %struct.imessage, %struct.imessage* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load %struct.imessage*, %struct.imessage** %8, align 8
  %25 = getelementptr inbounds %struct.imessage, %struct.imessage* %24, i32 0, i32 0
  store i32 -1, i32* %25, align 8
  %26 = load %struct.imessage*, %struct.imessage** %8, align 8
  %27 = getelementptr inbounds %struct.imessage, %struct.imessage* %26, i32 0, i32 3
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %27, align 8
  %28 = load %struct.imessage*, %struct.imessage** %8, align 8
  %29 = getelementptr inbounds %struct.imessage, %struct.imessage* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %31 = icmp ne %struct.TYPE_16__* %30, null
  br i1 %31, label %32, label %96

32:                                               ; preds = %6
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call %struct.TYPE_17__* @tree_lookup(i32 %35, i32 %36)
  store %struct.TYPE_17__* %37, %struct.TYPE_17__** %14, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %39 = icmp ne %struct.TYPE_17__* %38, null
  br i1 %39, label %40, label %81

40:                                               ; preds = %32
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, 7
  switch i32 %44, label %78 [
    i32 131, label %45
    i32 130, label %45
    i32 132, label %58
    i32 129, label %59
    i32 128, label %65
  ]

45:                                               ; preds = %40, %40
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = load %struct.imessage*, %struct.imessage** %8, align 8
  %50 = getelementptr inbounds %struct.imessage, %struct.imessage* %49, i32 0, i32 4
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %50, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.imessage*, %struct.imessage** %8, align 8
  %57 = getelementptr inbounds %struct.imessage, %struct.imessage* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  store i32 1, i32* %7, align 4
  br label %200

58:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %200

59:                                               ; preds = %40
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.imessage*, %struct.imessage** %8, align 8
  %64 = getelementptr inbounds %struct.imessage, %struct.imessage* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %80

65:                                               ; preds = %40
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.imessage*, %struct.imessage** %8, align 8
  %72 = getelementptr inbounds %struct.imessage, %struct.imessage* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = load %struct.imessage*, %struct.imessage** %8, align 8
  %77 = getelementptr inbounds %struct.imessage, %struct.imessage* %76, i32 0, i32 3
  store %struct.TYPE_14__* %75, %struct.TYPE_14__** %77, align 8
  br label %80

78:                                               ; preds = %40
  %79 = call i32 @assert(i32 0)
  br label %80

80:                                               ; preds = %78, %65, %59
  br label %81

81:                                               ; preds = %80, %32
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call %struct.TYPE_17__* @tree_lookup(i32 %84, i32 %85)
  store %struct.TYPE_17__* %86, %struct.TYPE_17__** %16, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %88 = icmp ne %struct.TYPE_17__* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.imessage*, %struct.imessage** %8, align 8
  %94 = getelementptr inbounds %struct.imessage, %struct.imessage* %93, i32 0, i32 2
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %89, %81
  br label %97

96:                                               ; preds = %6
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %14, align 8
  br label %97

97:                                               ; preds = %96, %95
  %98 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %10, align 8
  %99 = icmp ne %struct.file_user_list_entry* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %10, align 8
  %103 = getelementptr inbounds %struct.file_user_list_entry, %struct.file_user_list_entry* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp sgt i32 %101, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %100, %97
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %108 = icmp ne %struct.TYPE_17__* %107, null
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  store i32 0, i32* %7, align 4
  br label %200

112:                                              ; preds = %100
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %114 = icmp ne %struct.TYPE_16__* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %117 = call i8* @get_user_metafile(%struct.TYPE_16__* %116)
  %118 = icmp ne i8* %117, null
  br i1 %118, label %133, label %119

119:                                              ; preds = %115, %112
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %119
  store i32 -2, i32* %7, align 4
  br label %200

123:                                              ; preds = %119
  %124 = load i32, i32* %11, align 4
  %125 = call %struct.TYPE_18__* @load_user_metafile(i32 %124)
  store %struct.TYPE_18__* %125, %struct.TYPE_18__** %17, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %127 = icmp ne %struct.TYPE_18__* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %123
  store i32 -2, i32* %7, align 4
  br label %200

129:                                              ; preds = %123
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  store i8* %132, i8** %15, align 8
  br label %154

133:                                              ; preds = %115
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %135 = call i8* @get_user_metafile(%struct.TYPE_16__* %134)
  store i8* %135, i8** %15, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %137, align 8
  %139 = icmp ne %struct.TYPE_15__* %138, null
  br i1 %139, label %140, label %150

140:                                              ; preds = %133
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %10, align 8
  %147 = getelementptr inbounds %struct.file_user_list_entry, %struct.file_user_list_entry* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp sge i32 %145, %148
  br label %150

150:                                              ; preds = %140, %133
  %151 = phi i1 [ false, %133 ], [ %149, %140 ]
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  br label %154

154:                                              ; preds = %150, %129
  %155 = load i8*, i8** %15, align 8
  %156 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %10, align 8
  %157 = getelementptr inbounds %struct.file_user_list_entry, %struct.file_user_list_entry* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %12, align 4
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %161 = call %struct.TYPE_19__* @user_metafile_message_lookup(i8* %155, i32 %158, i32 %159, %struct.TYPE_16__* %160)
  %162 = load %struct.imessage*, %struct.imessage** %8, align 8
  %163 = getelementptr inbounds %struct.imessage, %struct.imessage* %162, i32 0, i32 1
  store %struct.TYPE_19__* %161, %struct.TYPE_19__** %163, align 8
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %165 = icmp ne %struct.TYPE_17__* %164, null
  br i1 %165, label %166, label %171

166:                                              ; preds = %154
  %167 = load %struct.imessage*, %struct.imessage** %8, align 8
  %168 = getelementptr inbounds %struct.imessage, %struct.imessage* %167, i32 0, i32 1
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %168, align 8
  %170 = icmp ne %struct.TYPE_19__* %169, null
  br label %171

171:                                              ; preds = %166, %154
  %172 = phi i1 [ true, %154 ], [ %170, %166 ]
  %173 = zext i1 %172 to i32
  %174 = call i32 @assert(i32 %173)
  %175 = load %struct.imessage*, %struct.imessage** %8, align 8
  %176 = getelementptr inbounds %struct.imessage, %struct.imessage* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %193

179:                                              ; preds = %171
  %180 = load %struct.imessage*, %struct.imessage** %8, align 8
  %181 = getelementptr inbounds %struct.imessage, %struct.imessage* %180, i32 0, i32 1
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %181, align 8
  %183 = icmp ne %struct.TYPE_19__* %182, null
  br i1 %183, label %184, label %193

184:                                              ; preds = %179
  %185 = load %struct.imessage*, %struct.imessage** %8, align 8
  %186 = getelementptr inbounds %struct.imessage, %struct.imessage* %185, i32 0, i32 1
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %189, 65535
  %191 = load %struct.imessage*, %struct.imessage** %8, align 8
  %192 = getelementptr inbounds %struct.imessage, %struct.imessage* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  br label %193

193:                                              ; preds = %184, %179, %171
  %194 = load %struct.imessage*, %struct.imessage** %8, align 8
  %195 = getelementptr inbounds %struct.imessage, %struct.imessage* %194, i32 0, i32 1
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %195, align 8
  %197 = icmp ne %struct.TYPE_19__* %196, null
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i32 1, i32 0
  store i32 %199, i32* %7, align 4
  br label %200

200:                                              ; preds = %193, %128, %122, %106, %58, %45
  %201 = load i32, i32* %7, align 4
  ret i32 %201
}

declare dso_local %struct.TYPE_17__* @tree_lookup(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @get_user_metafile(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_18__* @load_user_metafile(i32) #1

declare dso_local %struct.TYPE_19__* @user_metafile_message_lookup(i8*, i32, i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
