; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_do_store_new_message.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_do_store_new_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_add_message = type { i32, i64, i32, i32, i8*, i32*, i64, i32 }

@MAX_TEXT_LEN = common dso_local global i32 0, align 4
@write_extra_mask = common dso_local global i32 0, align 4
@LEV_TX_ADD_MESSAGE_EXT_LL = common dso_local global i32 0, align 4
@MAX_EXTRA_MASK = common dso_local global i32 0, align 4
@LEV_TX_ADD_MESSAGE_EXT = common dso_local global i32 0, align 4
@LEV_TX_ADD_MESSAGE_LF = common dso_local global i32 0, align 4
@LEV_TX_ADD_MESSAGE_MF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_store_new_message(%struct.lev_add_message* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lev_add_message*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lev_add_message*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store %struct.lev_add_message* %0, %struct.lev_add_message** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %20 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @conv_uid(i32 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %4
  %25 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %26 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @MAX_TEXT_LEN, align 4
  %30 = icmp uge i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24, %4
  store i32 -1, i32* %5, align 4
  br label %232

32:                                               ; preds = %24
  %33 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %34 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = ashr i32 %35, 16
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @write_extra_mask, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %14, align 4
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %42 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @FITS_AN_INT(i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %69, label %46

46:                                               ; preds = %32
  %47 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %48 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, 65535
  %51 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %52 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @LEV_TX_ADD_MESSAGE_EXT_LL, align 4
  %54 = load i32, i32* %14, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %57 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %59 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = and i64 %61, 4294967295
  %63 = load i64, i64* %9, align 8
  %64 = and i64 %63, -4294967296
  %65 = or i64 %62, %64
  %66 = trunc i64 %65 to i32
  %67 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %68 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  br label %110

69:                                               ; preds = %32
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @MAX_EXTRA_MASK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %69
  %75 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %76 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, 65535
  %79 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %80 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @LEV_TX_ADD_MESSAGE_EXT, align 4
  %82 = load i32, i32* %14, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %85 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  br label %109

86:                                               ; preds = %69
  %87 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %88 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, -4096
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %86
  %93 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %94 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, 65535
  %97 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %98 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @LEV_TX_ADD_MESSAGE_LF, align 4
  %100 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %101 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  br label %108

102:                                              ; preds = %86
  %103 = load i32, i32* @LEV_TX_ADD_MESSAGE_MF, align 4
  %104 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %105 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %102, %92
  br label %109

109:                                              ; preds = %108, %74
  br label %110

110:                                              ; preds = %109, %46
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @extra_mask_intcount(i32 %111)
  %113 = mul nsw i32 4, %112
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @extra_mask_intcount(i32 %114)
  %116 = mul nsw i32 4, %115
  store i32 %116, i32* %16, align 4
  %117 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %118 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %16, align 4
  %121 = sext i32 %120 to i64
  %122 = add i64 56, %121
  %123 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %124 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %123, i32 0, i32 6
  %125 = load i64, i64* %124, align 8
  %126 = add i64 %122, %125
  %127 = add i64 %126, 1
  %128 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %129 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 8
  %131 = call %struct.lev_add_message* @alloc_log_event(i32 %119, i64 %127, i32 %130)
  store %struct.lev_add_message* %131, %struct.lev_add_message** %10, align 8
  %132 = load %struct.lev_add_message*, %struct.lev_add_message** %10, align 8
  %133 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %132, i32 0, i32 1
  %134 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %135 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %134, i32 0, i32 1
  %136 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %137 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %136, i32 0, i32 4
  %138 = bitcast i8** %137 to i8*
  %139 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %140 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %139, i32 0, i32 1
  %141 = bitcast i64* %140 to i8*
  %142 = ptrtoint i8* %138 to i64
  %143 = ptrtoint i8* %141 to i64
  %144 = sub i64 %142, %143
  %145 = trunc i64 %144 to i32
  %146 = call i32 @memcpy(i64* %133, i64* %135, i32 %145)
  %147 = load %struct.lev_add_message*, %struct.lev_add_message** %10, align 8
  %148 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %147, i32 0, i32 4
  %149 = load i8*, i8** %148, align 8
  %150 = load i32, i32* %16, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  store i8* %152, i8** %11, align 8
  %153 = load i8*, i8** %8, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %162, label %155

155:                                              ; preds = %110
  %156 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %157 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %156, i32 0, i32 4
  %158 = load i8*, i8** %157, align 8
  %159 = load i32, i32* %15, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  store i8* %161, i8** %8, align 8
  br label %162

162:                                              ; preds = %155, %110
  %163 = load %struct.lev_add_message*, %struct.lev_add_message** %10, align 8
  %164 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %163, i32 0, i32 5
  %165 = load i32*, i32** %164, align 8
  store i32* %165, i32** %17, align 8
  %166 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %167 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %166, i32 0, i32 5
  %168 = load i32*, i32** %167, align 8
  store i32* %168, i32** %18, align 8
  store i32 1, i32* %12, align 4
  br label %169

169:                                              ; preds = %213, %162
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* @MAX_EXTRA_MASK, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %216

173:                                              ; preds = %169
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* %12, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %198

178:                                              ; preds = %173
  %179 = load i32, i32* %12, align 4
  %180 = icmp slt i32 %179, 256
  br i1 %180, label %181, label %187

181:                                              ; preds = %178
  %182 = load i32*, i32** %18, align 8
  %183 = getelementptr inbounds i32, i32* %182, i32 1
  store i32* %183, i32** %18, align 8
  %184 = load i32, i32* %182, align 4
  %185 = load i32*, i32** %17, align 8
  %186 = getelementptr inbounds i32, i32* %185, i32 1
  store i32* %186, i32** %17, align 8
  store i32 %184, i32* %185, align 4
  br label %197

187:                                              ; preds = %178
  %188 = load i32*, i32** %18, align 8
  %189 = bitcast i32* %188 to i64*
  %190 = load i64, i64* %189, align 8
  %191 = load i32*, i32** %17, align 8
  %192 = bitcast i32* %191 to i64*
  store i64 %190, i64* %192, align 8
  %193 = load i32*, i32** %17, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 2
  store i32* %194, i32** %17, align 8
  %195 = load i32*, i32** %18, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 2
  store i32* %196, i32** %18, align 8
  br label %197

197:                                              ; preds = %187, %181
  br label %212

198:                                              ; preds = %173
  %199 = load i32, i32* %13, align 4
  %200 = load i32, i32* %12, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %211

203:                                              ; preds = %198
  %204 = load i32, i32* %12, align 4
  %205 = icmp slt i32 %204, 256
  %206 = zext i1 %205 to i64
  %207 = select i1 %205, i32 1, i32 2
  %208 = load i32*, i32** %18, align 8
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  store i32* %210, i32** %18, align 8
  br label %211

211:                                              ; preds = %203, %198
  br label %212

212:                                              ; preds = %211, %197
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %12, align 4
  %215 = shl i32 %214, 1
  store i32 %215, i32* %12, align 4
  br label %169

216:                                              ; preds = %169
  %217 = load i32*, i32** %17, align 8
  %218 = bitcast i32* %217 to i8*
  %219 = load i8*, i8** %11, align 8
  %220 = icmp eq i8* %218, %219
  %221 = zext i1 %220 to i32
  %222 = call i32 @assert(i32 %221)
  %223 = load i8*, i8** %11, align 8
  %224 = load i8*, i8** %8, align 8
  %225 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %226 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %225, i32 0, i32 6
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @copy_adjust_text(i8* %223, i8* %224, i64 %227)
  %229 = load %struct.lev_add_message*, %struct.lev_add_message** %10, align 8
  %230 = load i32, i32* %7, align 4
  %231 = call i32 @store_new_message(%struct.lev_add_message* %229, i32 %230)
  store i32 %231, i32* %5, align 4
  br label %232

232:                                              ; preds = %216, %31
  %233 = load i32, i32* %5, align 4
  ret i32 %233
}

declare dso_local i64 @conv_uid(i32) #1

declare dso_local i32 @FITS_AN_INT(i64) #1

declare dso_local i32 @extra_mask_intcount(i32) #1

declare dso_local %struct.lev_add_message* @alloc_log_event(i32, i64, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @copy_adjust_text(i8*, i8*, i64) #1

declare dso_local i32 @store_new_message(%struct.lev_add_message*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
