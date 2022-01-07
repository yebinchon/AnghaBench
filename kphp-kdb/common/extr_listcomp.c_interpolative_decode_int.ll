; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_interpolative_decode_int.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_interpolative_decode_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_decoder = type { i32, i32, i32, %struct.bitreader, i64 }
%struct.bitreader = type { i32 }
%struct.interpolative_decoder_stack_entry = type { i32, i32, i8*, i32, i32 }

@INTERPOLATIVE_DECODER_NOT_EVALUATED = common dso_local global i8* null, align 8
@decode_cur_bit = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_decoder*)* @interpolative_decode_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interpolative_decode_int(%struct.list_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.list_decoder*, align 8
  %4 = alloca %struct.interpolative_decoder_stack_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bitreader*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.interpolative_decoder_stack_entry*, align 8
  store %struct.list_decoder* %0, %struct.list_decoder** %3, align 8
  %13 = load %struct.list_decoder*, %struct.list_decoder** %3, align 8
  %14 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  %17 = load %struct.list_decoder*, %struct.list_decoder** %3, align 8
  %18 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.list_decoder*, %struct.list_decoder** %3, align 8
  %21 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 2147483647, i32* %2, align 4
  br label %226

25:                                               ; preds = %1
  %26 = load %struct.list_decoder*, %struct.list_decoder** %3, align 8
  %27 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.interpolative_decoder_stack_entry*
  %30 = load %struct.list_decoder*, %struct.list_decoder** %3, align 8
  %31 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %29, i64 %33
  store %struct.interpolative_decoder_stack_entry* %34, %struct.interpolative_decoder_stack_entry** %4, align 8
  br label %35

35:                                               ; preds = %225, %25
  %36 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %4, align 8
  %37 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %4, align 8
  %40 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  %43 = ashr i32 %42, 1
  store i32 %43, i32* %5, align 4
  %44 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %4, align 8
  %45 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = load i8*, i8** @INTERPOLATIVE_DECODER_NOT_EVALUATED, align 8
  %48 = icmp eq i8* %46, %47
  br i1 %48, label %49, label %129

49:                                               ; preds = %35
  %50 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %4, align 8
  %51 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %4, align 8
  %54 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %5, align 4
  %57 = sub nsw i32 %55, %56
  %58 = sub nsw i32 %52, %57
  store i32 %58, i32* %6, align 4
  %59 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %4, align 8
  %60 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %4, align 8
  %64 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %62, %65
  %67 = add nsw i32 %61, %66
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 %68, %69
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %123

73:                                               ; preds = %49
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  %76 = load %struct.list_decoder*, %struct.list_decoder** %3, align 8
  %77 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %76, i32 0, i32 3
  store %struct.bitreader* %77, %struct.bitreader** %9, align 8
  %78 = load %struct.bitreader*, %struct.bitreader** %9, align 8
  %79 = getelementptr inbounds %struct.bitreader, %struct.bitreader* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %81

81:                                               ; preds = %93, %73
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %81
  %86 = load i32, i32* %11, align 4
  %87 = shl i32 %86, 1
  store i32 %87, i32* %11, align 4
  %88 = load i64, i64* @decode_cur_bit, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %90, %85
  %94 = call i32 (...) @decode_load_bit()
  br label %81

95:                                               ; preds = %81
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.bitreader*, %struct.bitreader** %9, align 8
  %98 = getelementptr inbounds %struct.bitreader, %struct.bitreader* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %11, align 4
  %101 = sub nsw i32 %100, %99
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = and i32 %102, 1
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %95
  %106 = load i32, i32* %8, align 4
  %107 = ashr i32 %106, 1
  %108 = load i32, i32* %11, align 4
  %109 = ashr i32 %108, 1
  %110 = sub nsw i32 %107, %109
  %111 = sub nsw i32 %110, 1
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %7, align 4
  br label %122

114:                                              ; preds = %95
  %115 = load i32, i32* %8, align 4
  %116 = ashr i32 %115, 1
  %117 = load i32, i32* %11, align 4
  %118 = ashr i32 %117, 1
  %119 = add nsw i32 %116, %118
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %114, %105
  br label %123

123:                                              ; preds = %122, %49
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = inttoptr i64 %125 to i8*
  %127 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %4, align 8
  %128 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %127, i32 0, i32 2
  store i8* %126, i8** %128, align 8
  br label %129

129:                                              ; preds = %123, %35
  br label %130

130:                                              ; preds = %150, %129
  %131 = load %struct.list_decoder*, %struct.list_decoder** %3, align 8
  %132 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %130
  %137 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %4, align 8
  %138 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %137, i32 0, i32 2
  %139 = load i8*, i8** %138, align 8
  %140 = ptrtoint i8* %139 to i32
  store i32 %140, i32* %2, align 4
  br label %226

141:                                              ; preds = %130
  %142 = load %struct.list_decoder*, %struct.list_decoder** %3, align 8
  %143 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %4, align 8
  %146 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %141
  br label %165

150:                                              ; preds = %141
  %151 = load %struct.list_decoder*, %struct.list_decoder** %3, align 8
  %152 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %152, align 8
  %155 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %4, align 8
  %156 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %155, i32 -1
  store %struct.interpolative_decoder_stack_entry* %156, %struct.interpolative_decoder_stack_entry** %4, align 8
  %157 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %4, align 8
  %158 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %4, align 8
  %161 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %159, %162
  %164 = ashr i32 %163, 1
  store i32 %164, i32* %5, align 4
  br label %130

165:                                              ; preds = %149
  %166 = load %struct.list_decoder*, %struct.list_decoder** %3, align 8
  %167 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 8
  %170 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %4, align 8
  %171 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %170, i64 1
  store %struct.interpolative_decoder_stack_entry* %171, %struct.interpolative_decoder_stack_entry** %12, align 8
  %172 = load %struct.list_decoder*, %struct.list_decoder** %3, align 8
  %173 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %5, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %201

177:                                              ; preds = %165
  %178 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %4, align 8
  %179 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %12, align 8
  %182 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 8
  %183 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %4, align 8
  %184 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %12, align 8
  %187 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %186, i32 0, i32 4
  store i32 %185, i32* %187, align 4
  %188 = load i8*, i8** @INTERPOLATIVE_DECODER_NOT_EVALUATED, align 8
  %189 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %12, align 8
  %190 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %189, i32 0, i32 2
  store i8* %188, i8** %190, align 8
  %191 = load i32, i32* %5, align 4
  %192 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %12, align 8
  %193 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 4
  %194 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %4, align 8
  %195 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %194, i32 0, i32 2
  %196 = load i8*, i8** %195, align 8
  %197 = ptrtoint i8* %196 to i32
  %198 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %12, align 8
  %199 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %198, i32 0, i32 3
  store i32 %197, i32* %199, align 8
  %200 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %12, align 8
  store %struct.interpolative_decoder_stack_entry* %200, %struct.interpolative_decoder_stack_entry** %4, align 8
  br label %225

201:                                              ; preds = %165
  %202 = load i32, i32* %5, align 4
  %203 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %12, align 8
  %204 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 8
  %205 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %4, align 8
  %206 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %205, i32 0, i32 2
  %207 = load i8*, i8** %206, align 8
  %208 = ptrtoint i8* %207 to i32
  %209 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %12, align 8
  %210 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %209, i32 0, i32 4
  store i32 %208, i32* %210, align 4
  %211 = load i8*, i8** @INTERPOLATIVE_DECODER_NOT_EVALUATED, align 8
  %212 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %12, align 8
  %213 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %212, i32 0, i32 2
  store i8* %211, i8** %213, align 8
  %214 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %4, align 8
  %215 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %12, align 8
  %218 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 4
  %219 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %4, align 8
  %220 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %12, align 8
  %223 = getelementptr inbounds %struct.interpolative_decoder_stack_entry, %struct.interpolative_decoder_stack_entry* %222, i32 0, i32 3
  store i32 %221, i32* %223, align 8
  %224 = load %struct.interpolative_decoder_stack_entry*, %struct.interpolative_decoder_stack_entry** %12, align 8
  store %struct.interpolative_decoder_stack_entry* %224, %struct.interpolative_decoder_stack_entry** %4, align 8
  br label %225

225:                                              ; preds = %201, %177
  br label %35

226:                                              ; preds = %136, %24
  %227 = load i32, i32* %2, align 4
  ret i32 %227
}

declare dso_local i32 @decode_load_bit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
